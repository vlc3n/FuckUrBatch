@echo off

set "registryKey=HKEY_LOCAL_MACHINE\Software\YourRegistryKey"
set "backupFile=registry_backup.reg"

reg export "%registryKey%" "%backupFile%"

echo Registry key "%registryKey%" has been backed up to "%backupFile%".
pause
