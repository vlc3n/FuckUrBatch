@echo off

echo Checking for Windows updates...
wmic qfe list brief /format:table

pause
