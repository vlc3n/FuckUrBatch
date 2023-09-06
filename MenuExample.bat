@echo off
setlocal enabledelayedexpansion

:menu
cls
echo Advanced Batch Script Menu
echo 1. File Management
echo 2. System Information
echo 3. User Management
echo 4. Exit
set /p choice=Enter the number of your choice: 

if "%choice%"=="1" call :file_management
if "%choice%"=="2" call :system_info
if "%choice%"=="3" call :user_management
if "%choice%"=="4" exit

goto menu

:file_management
cls
echo File Management Menu
echo 1. List Files in a Directory
echo 2. Copy Files
echo 3. Rename Files
echo 4. Delete Files
echo 5. Back to Main Menu
set /p choice=Enter the number of your choice: 

if "%choice%"=="1" (
    set /p "dir_path=Enter directory path: "
    dir /b "%dir_path%"
    pause
    goto file_management
)

if "%choice%"=="2" (
    set /p "source=Enter source file/folder path: "
    set /p "destination=Enter destination folder path: "
    copy "%source%" "%destination%"
    echo Files copied successfully.
    pause
    goto file_management
)

if "%choice%"=="3" (
    set /p "dir_path=Enter directory path: "
    set /p "old_ext=Enter old file extension: "
    set /p "new_ext=Enter new file extension: "
    ren "%dir_path%\*.%old_ext%" *.%new_ext%
    echo Files renamed successfully.
    pause
    goto file_management
)

if "%choice%"=="4" (
    set /p "dir_path=Enter directory path: "
    set /p "file_ext=Enter file extension to delete (e.g., txt): "
    del /s "%dir_path%\*.%file_ext%"
    echo Files deleted successfully.
    pause
    goto file_management
)

if "%choice%"=="5" goto menu

goto file_management

:system_info
cls
echo System Information
systeminfo
pause
goto menu

:user_management
cls
echo User Management Menu
echo 1. Create User
echo 2. Delete User
echo 3. Back to Main Menu
set /p choice=Enter the number of your choice: 

if "%choice%"=="1" (
    set /p "username=Enter username: "
    net user %username% /add
    echo User %username% created successfully.
    pause
    goto user_management
)

if "%choice%"=="2" (
    set /p "username=Enter username to delete: "
    net user %username% /delete
    echo User %username% deleted successfully.
    pause
    goto user_management
)

if "%choice%"=="3" goto menu

goto user_management
