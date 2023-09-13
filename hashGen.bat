@echo off
setlocal enabledelayedexpansion

set "sourceFolder=C:\Path\to\SourceFolder"
set "logFile=hash_log.txt"

for %%A in ("%sourceFolder%\*.*") do (
    certutil -hashfile "%%A" SHA256 >> "%logFile%"
)

echo Hashes have been generated and saved to "%logFile%".
pause
