@echo off
setlocal
echo RUN THIS SCRIPT IN ADMINISTRATOR MODE
echo Do you want to enable or disable Windows Defender Real Time Protection:
echo 1. Enable
echo 2. Disable
set /p choice=Enter your choice (1/2): 

if "%choice%"=="1" (
    echo You chose "Enable"
    Set-MpPreference -DisableRealtimeMonitoring $false
) else if "%choice%"=="2" (
    echo You chose "Disable"
    Set-MpPreference -DisableRealtimeMonitoring $true
) else (
    echo Invalid choice
)

endlocal
