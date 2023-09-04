@echo off
set "service=explorer"

sc query %service% | find "RUNNING" >nul
if %errorlevel%==0 (
  net stop %service%
) else (
  net start %service%
)
