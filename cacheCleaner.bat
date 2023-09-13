@echo off

REM Clean temporary files
echo Cleaning temporary files...
del /s /q %temp%\*.*

REM Clean browser caches (for Chrome)
echo Cleaning Chrome cache...
rd /s /q "C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data\Default\Cache"

echo System cleanup complete.
pause
