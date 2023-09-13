@echo off

set "processName=YourProcess.exe"

taskkill /f /im "%processName%"

echo Process "%processName%" has been terminated.
pause
