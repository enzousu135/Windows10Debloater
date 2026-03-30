# Shared safety and stability functions for Windows 10 Debloater scripts.

Function Check-OSVersion {
    Write-Host "Checking OS Version..."
    $OS = Get-CimInstance Win32_OperatingSystem
    If ($OS.Caption -notmatch "Windows 10" -and $OS.Caption -notmatch "Windows 11") {
        Write-Warning "This script is designed for Windows 10 and Windows 11. Running it on other versions (like $($OS.Caption)) may cause instability."
        $Prompt = Read-Host "Do you want to continue anyway? (Y/N)"
        If ($Prompt -notmatch "Y") {
            Write-Error "Unsupported OS version. Exiting for safety."
            Exit
        }
    }
    Write-Host "OS Version: $($OS.Caption) - Check passed."
}

Function Enable-SystemProtection {
    Write-Host "Ensuring System Protection is enabled for C: drive..."
    Try {
        $Drive = "C:\"
        # Check if System Protection is enabled
        $Status = Get-ComputerRestorePoint -LastStatus | Select-Object -ExpandProperty SequenceNumber -ErrorAction SilentlyContinue
        
        # This is a bit tricky via PowerShell directly, but we can use WMI
        $ProtectionStatus = (Get-CimInstance -Namespace root/default -ClassName SystemRestoreConfig).RealTimeProtectionEnabled
        
        If ($ProtectionStatus -eq 0 -or $ProtectionStatus -eq $null) {
            Write-Host "System Protection is currently disabled for $Drive."
            $ConfirmEnable = Read-Host "Would you like to enable System Protection for $Drive so a restore point can be created? (Y/N)"
            If ($ConfirmEnable -match "Y") {
                Write-Host "Enabling System Protection for $Drive..."
                Enable-ComputerRestorePoint -Drive $Drive
                Write-Host "System Protection enabled for $Drive."
            } Else {
                Write-Host "System Protection will not be enabled. Restore point creation will likely fail."
            }
        } Else {
            Write-Host "System Protection is already enabled for $Drive."
        }
    } Catch {
        Write-Warning "Could not verify or enable System Protection. Restore point creation might fail."
    }
}

Function Create-RestorePoint {
    Param(
        [string]$Description = "Before Windows 10 Debloat"
    )
    
    Write-Host "Attempting to create a System Restore Point: '$Description'..."
    Write-Host "This may take a minute. Please wait..."
    
    Try {
        # Check for recently created restore points to avoid the 24-hour throttle error
        $LastRP = Get-ComputerRestorePoint | Select-Object -Last 1
        If ($LastRP -and $LastRP.CreationTime -gt (Get-Date).AddHours(-24)) {
            Write-Warning "A Restore Point was created within the last 24 hours. Windows may prevent creating another one immediately."
        }
        
        Checkpoint-Computer -Description $Description -RestorePointType "MODIFY_SETTINGS" -ErrorAction Stop
        Write-Host "Successfully created Restore Point: '$Description'."
    } Catch {
        Write-Warning "Failed to create Restore Point. Error: $($_.Exception.Message)"
        Write-Warning "Proceeding without a restore point. Ensure you have a full system backup before continuing."
        $Continue = Read-Host "Do you wish to proceed anyway? (Y/N)"
        If ($Continue -notmatch "Y") {
            Write-Error "User cancelled due to missing restore point."
            Exit
        }
    }
}

Function Run-SafetyChecks {
    Check-OSVersion
    Enable-SystemProtection
    Create-RestorePoint
}

Function Log-Error {
    Param(
        [string]$Message,
        [string]$Source = "Unknown"
    )
    
    $LogFolder = "C:\Temp\Windows10Debloater"
    If (!(Test-Path $LogFolder)) {
        New-Item -Path $LogFolder -ItemType Directory -Force | Out-Null
    }
    
    $LogFile = Join-Path $LogFolder "errors.log"
    $Timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $LogEntry = "[$Timestamp][$Source] ERROR: $Message"
    
    Add-Content -Path $LogFile -Value $LogEntry
}
