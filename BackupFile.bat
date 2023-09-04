@echo off
setlocal enabledelayedexpansion
set "file=C:\Path\to\File.txt"
set "backupdir=D:\Backup"

for /f "tokens=2-4 delims=/ " %%a in ('date /t') do (
  set "timestamp=%%c-%%a-%%b"
)

copy "%file%" "%backupdir%\File_%timestamp%.txt"
