@echo off

set "shutdownDelayMinutes=30"

shutdown /s /f /t %shutdownDelayMinutes%

echo System will shut down in %shutdownDelayMinutes% minutes.
pause
