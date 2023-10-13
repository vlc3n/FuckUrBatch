@echo off

set "hostname=YourHostname"
set "startPort=1"
set "endPort=65535"

powershell -command "& {1..%endPort% | ForEach-Object { Test-NetConnection -ComputerName %hostname% -Port $_ -InformationLevel Quiet } | Where-Object { $_.TcpTestSucceeded -eq $true } | Select-Object -ExpandProperty RemotePort}"

pause
