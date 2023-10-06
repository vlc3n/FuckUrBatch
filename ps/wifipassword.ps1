# Get the list of saved Wi-Fi profiles
$wifiProfiles = netsh wlan show profiles | Select-String "All User Profile" | ForEach-Object { $_ -replace "All User Profile\s+:\s+" }

# Prompt to select a Wi-Fi network
$selectedProfile = $wifiProfiles | Out-GridView -Title "Select a Wi-Fi network" -OutputMode Single

if ($selectedProfile) {
    # Get the Wi-Fi password for the selected network
    $wifiPassword = (netsh wlan show profile name="$selectedProfile" key=clear | Select-String "Key Content").ToString() -replace "Key Content\s+:\s+"
    
    # Display the password
    Write-Host "Wi-Fi network: $selectedProfile"
    Write-Host "Password: $wifiPassword"
} else {
    Write-Host "No Wi-Fi network selected."
}
