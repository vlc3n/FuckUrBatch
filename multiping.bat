@echo off
set "servers=dev1 dev2 dev3"
set "logfile=ping_log.txt"

for %%s in (%servers%) do (
  ping -n 5 %%s >> %logfile%
)
