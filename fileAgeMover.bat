@echo off

set "sourceFolder=C:\Path\to\SourceFolder"
set "destinationFolder=C:\Path\to\DestinationFolder"
set "daysOld=30"

forfiles /p "%sourceFolder%" /s /m *.* /d -%daysOld% /c "cmd /c move @path "%destinationFolder%""

echo Files older than %daysOld% days have been moved to "%destinationFolder%".
pause
