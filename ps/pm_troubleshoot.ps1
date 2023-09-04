# Check if Cheat Engine is installed and uninstall it
$cheatEngineUninstaller = "C:\Program Files\Cheat Engine\unins000.exe"
if (Test-Path $cheatEngineUninstaller) {
    Write-Host "Cheat Engine is installed. Uninstalling now."
    Start-Process -FilePath $cheatEngineUninstaller -ArgumentList "/VERYSILENT", "/SUPPRESSMSGBOXES" -Wait
    Write-Host "Uninstall completed."
}

# Check if the HKCU\Software\Cheat Engine registry key exists and delete it
if (Test-Path "HKCU:\Software\Cheat Engine") {
    Write-Host "Deleting HKCU\Software\Cheat Engine registry key"
    Remove-Item -Path "HKCU:\Software\Cheat Engine" -Force
    Write-Host "Registry key deleted."
} else {
    Write-Host "HKCU\Software\Cheat Engine registry key does not exist."
}

# Check for antivirus software and its status (Windows Defender etc)
$antivirusProduct = Get-WmiObject -Namespace "root\SecurityCenter2" -Class AntiVirusProduct | Select-Object -First 1

if ($antivirusProduct) {
    Write-Host "Antivirus software has been detected:"
    Write-Host "Product Name: $($antivirusProduct.displayName)"
    Write-Host "Product State: $($antivirusProduct.productState)"
} else {
    Write-Host "No antivirus software found."
}
