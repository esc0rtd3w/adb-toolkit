@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set filemode=PUSH
set sourcefile=NONE
set destinationfile=NONE

set dl_path=c:\adbtk\adblock
set dl_filename=hosts

set remote_path=misc/adblock

::call "scripts\get_info_bar.cmd"




:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Use Default Ad Blocking HOSTS File
echo.
echo 2) Choose a Custom HOSTS File (Local)
echo.
echo 3) Choose a Custom HOSTS File (Remote)
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p sourcefile=



:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %sourcefile%==R goto end
if %sourcefile%==r goto end


:: Reject any number higher than the highest menu item
if %sourcefile% gtr 3 goto reset

if %sourcefile%==1 goto default

if %sourcefile%==2 goto cLocal

if %sourcefile%==3 goto cRemote


goto main



:default

set tmpHOSTS=/sdcard/hosts
set pathHOSTS=/system/etc/hosts

::echo Default HOSTS File Test!
::echo.
::echo.
::pause>nul


set dl_get=%wget% -O "%dl_path%\%dl_filename%" "%dl_server%/%remote_path%/%dl_filename%"

if not exist "%dl_path%" md "%dl_path%"

%dl_get%

%adb% root

::%device_mount_rw3%
%adb% shell mount -o rw,remount /system

%adb% push "%dl_path%\%dl_filename%" /sdcard/

%adb% shell mv /system/etc/hosts /system/etc/hosts.bak

%adb% shell cp /sdcard/hosts /system/etc/

::%device_mount_ro3%
::%adb% shell mount -o ro,remount /system

goto end


:cLocal


goto end


:cRemote


goto end




:end


