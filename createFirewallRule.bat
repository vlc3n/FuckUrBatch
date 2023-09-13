@echo off

set "appName=YourApplication.exe"
set "ruleName=YourRuleName"
set "action=ALLOW"  REM Options: ALLOW, BLOCK
set "protocol=TCP"  REM Options: TCP, UDP
set "localPort=8080"

netsh advfirewall firewall add rule name="%ruleName%" dir=in action=%action% program="%appName%" protocol=%protocol% localport=%localPort% enable=yes

echo Firewall rule "%ruleName%" has been created.
pause
