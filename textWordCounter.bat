@echo off

set "textFile=C:\Path\to\TextFile.txt"
set "wordCount=0"

for /f "tokens=*" %%A in ('type "%textFile%" ^| find /v /c ""') do (
    set "wordCount=%%A"
)

echo Word count in "%textFile%": %wordCount%
pause
