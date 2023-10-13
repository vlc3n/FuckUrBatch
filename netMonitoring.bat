@echo off

:monitor
netstat -ano
timeout /t 5 >nul
goto monitor
