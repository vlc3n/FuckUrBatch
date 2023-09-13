@echo off

set "logFile=temperature_log.txt"

"C:\Path\to\CoreTemp.exe" /nogui /logfile:"%logFile%"

echo CPU temperature is being logged to "%logFile%".
pause
