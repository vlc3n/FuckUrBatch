@echo off
setlocal enabledelayedexpansion

REM Set the source directory to be backed up
set "source=C:\Path\to\SourceFolder"

REM Set the destination directory for backups
set "backupdir=C:\Path\to\BackupFolder"

REM Get the current date and time to create a timestamp
for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (
    set "day=%%a"
    set "month=%%b"
    set "year=%%c"
)
for /f "tokens=1-3 delims=: " %%a in ('time /t') do (
    set "hour=%%a"
    set "minute=%%b"
    set "second=%%c"
)

REM Create a timestamp string in the format YYYYMMDD_HHMMSS
set "timestamp=!year!!month!!day!_!hour!!minute!!second!"

REM Create a backup folder with the timestamp
set "backupfolder=!backupdir!\Backup_!timestamp!"
mkdir "!backupfolder!"

REM Copy files and directories to the backup folder
xcopy /s /i /y /q "%source%" "!backupfolder!"

echo Backup completed. Files and directories from "%source%" are backed up to "!backupfolder!".
pause
