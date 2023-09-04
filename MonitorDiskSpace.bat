@echo off
set "drive=C:"
set "threshold=10GB"
set "email=your@email.com"

for /f "tokens=3" %%a in ('dir %drive% ^| findstr /i "bytes free"') do (
  set "freespace=%%a"
)
echo %freespace% | findstr /r /c:"%threshold%" >nul || (
  echo Low disk space on %drive%! | sendmail.exe -t %email%
)
