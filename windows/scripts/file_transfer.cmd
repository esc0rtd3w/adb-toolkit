@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Download and Install an APK File
echo.
echo 2) Install APK as User
echo.
echo 3) Install APK as System
echo.
echo 4) Uninstall APK File From Device
echo.
echo 5) Pull File From Device (Copies files from device to PC)
echo.
echo 6) Push File To Device (Copies files from PC to device)
echo.
echo 7) Backup Files and Folders From Device To Computer
echo.
echo 8) Restore Files and Folders From Computer To Device
echo.
echo 9) View a Folder on Device
echo.
echo 10) Transfer New HOSTS File to Device for Ad/Crapware Blocking
::echo 10) Transfer From One Device To Another Device
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto end
if %action%==r goto end


:: Reject any number higher than the highest menu item
if %action% gtr 10 goto reset

if %action%==1 call "scripts\file_transfer\apk_download.cmd"

if %action%==2 call "scripts\file_transfer\install_apk_user.cmd"

if %action%==3 call "scripts\file_transfer\install_apk_system.cmd"

if %action%==4 call "scripts\file_transfer\uninstall_apk_main.cmd"

if %action%==5 call "scripts\file_transfer\pull_file.cmd"

if %action%==6 call "scripts\file_transfer\push_file.cmd"

if %action%==7 call "scripts\file_transfer\device_backup.cmd"

if %action%==8 call "scripts\file_transfer\device_restore.cmd"

if %action%==9 call "scripts\file_transfer\folder_view.cmd"

::if %action%==10 call "scripts\file_transfer\device_to_device.cmd"
if %action%==10 call "scripts\file_transfer\hosts_modifier.cmd"


goto reset




:end



