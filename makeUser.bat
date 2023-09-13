@echo off

set "usernames=user1 user2 user3"
set "password=YourPassword"

for %%A in (%usernames%) do (
    net user %%A %password% /add
)

echo User accounts have been created.
pause
