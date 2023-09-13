@echo off

set "file1=C:\Path\to\File1.txt"
set "file2=C:\Path\to\File2.txt"

for /f %%A in ('dir /-c "%file1%"^| findstr /i /v "File(s)"') do set "size1=%%A"
for /f %%B in ('dir /-c "%file2%"^| findstr /i /v "File(s)"') do set "size2=%%B"

if %size1% gtr %size2% (
    echo "%file1%" is larger than "%file2%".
) else if %size2% gtr %size1% (
    echo "%file2%" is larger than "%file1%".
) else (
    echo "%file1%" and "%file2%" are the same size.
)

pause
