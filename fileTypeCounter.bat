@echo off
setlocal enabledelayedexpansion

set "sourceFolder=C:\Path\to\SourceFolder"

for /r "%sourceFolder%" %%A in (*) do (
    set "ext=%%~xA"
    set /a "fileCount[!ext!]+=1"
)

for /f "tokens=2,*" %%B in ('set fileCount[') do (
    echo File Type: %%B Count: %%C
)

pause
