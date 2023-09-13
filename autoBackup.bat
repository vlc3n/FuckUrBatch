@echo off
setlocal enabledelayedexpansion

set "backupFolder=C:\Path\to\BackupFolder"
set "maxBackups=5"

for /f "skip=%maxBackups% tokens=*" %%A in ('dir /b /o-d "%backupFolder%\*.*"') do (
    del "%backupFolder%\%%A"
)

echo Backup rotation complete.
pause
