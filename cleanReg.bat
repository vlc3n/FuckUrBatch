@echo off

reg /e REGEDIT4 "%UserProfile%\Desktop\registry_clean.reg"
REM Execute the registry_clean.reg file in regedit

echo Windows registry has been cleaned.
pause
