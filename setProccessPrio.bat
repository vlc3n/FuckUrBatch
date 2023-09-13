@echo off

set "processName=YourProcess.exe"
set "priority=HIGH"  REM Options: REALTIME, HIGH, ABOVE_NORMAL, NORMAL, BELOW_NORMAL, IDLE

wmic process where name="%processName%" CALL setpriority "%priority%"

echo Priority for "%processName%" has been set to %priority%.
pause
