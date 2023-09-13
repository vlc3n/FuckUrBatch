@echo off

set "serviceName=YourServiceName"

sc qc "%serviceName%" | findstr /i "DEPENDENCIES"

pause
