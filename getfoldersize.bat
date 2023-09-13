@echo off
setlocal enabledelayedexpansion

set "folder=C:\Path\to\Folder"
set "totalSize=0"

for /r "%folder%" %%A in (*) do (
    set /a "totalSize+=%%~zA"
)

echo Total size of "%folder%" and its subfolders: %totalSize% bytes
pause
