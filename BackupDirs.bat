@echo off
setlocal enabledelayedexpansion

set "source=C:\Path\to\SourceFolder"
set "backupdir=C:\Path\to\BackupFolder"
set "timestamp=%date:~10,4%%date:~4,2%%date:~7,2%_%time:~0,2%%time:~3,2%%time:~6,2%"
set "backupfile=%backupdir%\Backup_%timestamp%.zip"

echo Starting backup process...

:: Check if source directory exists
if not exist "%source%" (
    echo Source directory does not exist. Backup aborted.
    exit /b 1
)

:: Check if backup directory exists, create it if not
if not exist "%backupdir%" (
    mkdir "%backupdir%"
    if errorlevel 1 (
        echo Failed to create backup directory. Backup aborted.
        exit /b 1
    )
)

:: Create a list of excluded files or directories (optional)
set "excludeList="
rem set "excludeList=*.log ExcludeFolderName"

:: Perform backup using 7-Zip (assuming 7-Zip is installed)
7z a -r -tzip "%backupfile%" "%source%" -mx9 -x!%excludeList%

:: Check if the backup operation was successful
if %errorlevel%==0 (
    echo Backup completed successfully. Backup file: %backupfile%
) else (
    echo Backup operation failed. Check the error message above.
)

endlocal
