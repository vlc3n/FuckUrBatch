@echo off

set "daysToKeep=30"
for /f "tokens=*" %%A in ('wevtutil el') do (
    set "log=%%A"
    wevtutil epl %log% "%log%_backup.evtx"
    wevtutil cl %log%
)

echo Event logs have been archived and cleared.
pause
