@echo off

set "searchDirs=C:\Folder1 C:\Folder2"
set "reportFile=permissions_report.txt"

echo Directory Permissions Report > "%reportFile"
echo --------------------------- >> "%reportFile"

for %%A in (%searchDirs%) do (
    echo Directory: %%A >> "%reportFile"
    icacls "%%A" >> "%reportFile"
    echo. >> "%reportFile"
)

echo Permissions report has been generated in "%reportFile".
pause
