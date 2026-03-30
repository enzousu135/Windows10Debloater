#Requires -RunAsAdministrator

Write-Output "Stopping and Disabling Windows Update Services..."
Stop-Service -Name wuauserv -ErrorAction SilentlyContinue
Set-Service -Name wuauserv -StartupType Disabled -ErrorAction SilentlyContinue

Stop-Service -Name WaaSMedicSvc -ErrorAction SilentlyContinue 
Set-Service -Name WaaSMedicSvc -StartupType Disabled -ErrorAction SilentlyContinue

Stop-Service -Name UsoSvc -ErrorAction SilentlyContinue
Set-Service -Name UsoSvc -StartupType Disabled -ErrorAction SilentlyContinue

Write-Output "Windows Update services have been disabled."
