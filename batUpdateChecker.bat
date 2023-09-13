@echo off

set "currentVersion=1.0"
set "latestVersion=1.1"
set "updateURL=https://example.com/your_script.bat"

if "%latestVersion%" gtr "%currentVersion%" (
    echo Updating to version %latestVersion%...
    certutil -urlcache -split -f "%updateURL%" "%~dp0\updated_script.bat"
    move /y "%~dp0\updated_script.bat" "%~dp0\your_script.bat"
    echo Update complete. Please run the script again.
) else (
    echo You are already using the latest version.
)

pause
