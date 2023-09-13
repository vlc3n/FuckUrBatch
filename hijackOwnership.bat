@echo off

set "fileOrFolder=C:\Path\to\FileOrFolder"
set "username=NewOwnerUsername"

takeown /F "%fileOrFolder%" /U %username% /R /D Y

echo Ownership for "%fileOrFolder%" has been changed to %username%.
pause
