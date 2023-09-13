@echo off

set "exportFile=scheduled_tasks.xml"

schtasks /query /xml > "%exportFile%"

echo Scheduled tasks have been exported to "%exportFile%".
pause
