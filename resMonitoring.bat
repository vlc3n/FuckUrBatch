@echo off

:monitor
cls
tasklist | findstr "cmd.exe"
wmic cpu get loadpercentage
wmic os get freephysicalmemory
wmic logicaldisk get size,freespace,caption
timeout /t 5 >nul
goto monitor
