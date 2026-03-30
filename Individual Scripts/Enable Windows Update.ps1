#Requires -RunAsAdministrator

Write-Output "Enabling and Starting Windows Update Services..."

Set-Service -Name wuauserv -StartupType Manual -ErrorAction SilentlyContinue
Start-Service -Name wuauserv -ErrorAction SilentlyContinue

Set-Service -Name WaaSMedicSvc -StartupType Manual -ErrorAction SilentlyContinue
Start-Service -Name WaaSMedicSvc -ErrorAction SilentlyContinue

Set-Service -Name UsoSvc -StartupType Manual -ErrorAction SilentlyContinue
Start-Service -Name UsoSvc -ErrorAction SilentlyContinue

Write-Output "Windows Update services have been restored."
