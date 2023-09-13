@echo off

net use Z: \\server\share
net use X: \\another-server\folder

echo Network drives have been mapped.
pause
