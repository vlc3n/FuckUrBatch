@echo off
setlocal enabledelayedexpansion

set "processes=notepad.exe chrome.exe"
set "logFile=process_monitor_log.txt"

for %%A in (%processes%) do (
    for /f "tokens=2" %%B in ('tasklist /fi "imagename eq %%A" /fo table /nh') do (
        set "pid=%%B"
        for /f "tokens=2" %%C in ('wmic process where "processid='!pid!'" get workingsetsize /value') do (
            set "memoryUsage=%%C"
        )
        echo %date% %time% Process: %%A (PID: !pid!) Memory Usage: !memoryUsage! >> "%logFile%"
    )
)

echo Process monitoring has started. Log is saved in "%logFile%".
pause
