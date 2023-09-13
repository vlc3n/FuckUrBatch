@echo off

set "logFile=system_events_log.txt"
echo %date% %time% System Startup >> "%logFile%"

REM Your script logic goes here.

echo %date% %time% System Shutdown >> "%logFile%"
pause
