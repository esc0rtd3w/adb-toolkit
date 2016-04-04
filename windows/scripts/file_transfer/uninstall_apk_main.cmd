@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

:set_var
set action=99

:: Setting default download path
set dl_path=c:\adbtk

:: Setting default remote path
set remote_path=BLANK

:: Setting Default Filename
set dl_filename=BLANK

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo 1) Uninstall APK File From Device
echo.
echo 2) Uninstall APK File From Device (Method 2)
echo.
echo 3) Uninstall APK File From Device (Method 3)
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
if %action% gtr 3 goto reset

if %action%==1 call "scripts\file_transfer\uninstall_apk_method1.cmd"

if %action%==2 call "scripts\file_transfer\uninstall_apk_method2.cmd"

if %action%==3 call "scripts\file_transfer\uninstall_apk_method3.cmd"




goto reset


:end


