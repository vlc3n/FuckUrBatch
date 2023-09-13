@echo off

set "sourceFolder=C:\Path\to\SourceFolder"
set "zipFile=archive.zip"
set "password=YourPassword"

7z a -p"%password%" "%zipFile%" "%sourceFolder%"

echo Files have been compressed into "%zipFile%" with a password.
pause
