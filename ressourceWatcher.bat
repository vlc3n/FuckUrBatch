@echo off

set "logFile=ResourceUsageLog.txt"
set "interval=5"  REM Measurement interval in seconds

echo Timestamp, CPU Usage (%), Memory Usage (MB) > "%logFile%"

:monitor_loop
for /f "skip=1 tokens=*" %%A in ('wmic cpu get loadpercentage ^| findstr /r "[0-9]"') do (
    set "cpuUsage=%%A"
)

for /f "tokens=2" %%B in ('tasklist /fi "imagename eq cmd.exe" /nh ^| find /i "cmd.exe"') do (
    set "memoryUsage=%%B"
)

echo %date% %time%, !cpuUsage!, !memoryUsage! >> "%logFile%"
timeout /t %interval% >nul
goto monitor_loop
