@echo off

cscript //nologo "%windir%\system32\slmgr.vbs" -dli | findstr /i "Key"

pause
