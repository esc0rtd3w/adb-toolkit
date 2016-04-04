@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:: Getting ADB Root Access
%getadbroot%

:set_var
set androidpath=99
set view=%adb% shell ls


::call "scripts\get_info_bar.cmd"



:main
set pagetwo=0
%showbanner%
echo.
echo.
echo Select a directory from below or press "C" for Custom and Press ENTER:
echo.
echo.
echo 1) Root directory on device (/)
echo.
echo 2) Root directory on SD Card (/sdcard/)
echo.
echo 3) Pictures Folder on SD Card (/sdcard/DCIM/)
echo.
echo 4) Pictures Folder Alternate 1 on SD Card (/sdcard/Camera/)
echo.
echo 5) Pictures Folder Alternate 2 on SD Card (/sdcard/Pictures/)
echo.
echo 6) Music Folder on SD Card (/sdcard/media/music/)
echo.
echo 7) Notifications Folder on SD Card (/sdcard/media/audio/notifications/)
echo.
echo 8) Ringtones Folder on SD Card (/sdcard/media/audio/ringtones/)
echo.
echo 9) Download Folder on SD Card (/sdcard/Download/)
echo.
echo 10) Download Folder Alternate on SD Card (/sdcard/Downloads/)
echo.
echo 11) Android Data Cache on SD Card (/sdcard/android/data/)
echo.
echo 12) Android Secure Folder on SD Card (/sdcard/.android_secure/)
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p androidpath=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %androidpath%==R goto end
if %androidpath%==r goto end

:: Check Custom Path flag
if %androidpath%==C goto custpath
if %androidpath%==c goto custpath

:: Check Next Page flag
if %androidpath%==N goto main2
if %androidpath%==n goto main2


:: Reject any number higher than the highest menu item
if %androidpath% gtr 12 goto reset

if %androidpath%==1 set androidpath=/

if %androidpath%==2 set androidpath=/sdcard/

if %androidpath%==3 set androidpath=/sdcard/DCIM/

if %androidpath%==4 set androidpath=/sdcard/Camera/

if %androidpath%==5 set androidpath=/sdcard/Pictures/

if %androidpath%==6 set androidpath=/sdcard/media/music/

if %androidpath%==7 set androidpath=/sdcard/media/audio/notifications/

if %androidpath%==8 set androidpath=/sdcard/media/audio/ringtones/

if %androidpath%==9 set androidpath=/sdcard/Download/

if %androidpath%==10 set androidpath=/sdcard/Downloads/

if %androidpath%==11 set androidpath=/sdcard/android/data/

if %androidpath%==12 set androidpath=/sdcard/.android_secure/


goto doview



:main2
set androidpath=99
%showbanner%
echo.
echo.
echo Select a directory from below and Press ENTER:
echo.
echo.
echo 13) User Applications (/data/app/)
echo.
echo 14) System Applications (/system/app/)
echo.
echo 15) System BIN Folder (/system/bin/)
echo.
echo 16) System XBIN Folder (/system/xbin/)
echo.
echo 17) User Application Data and Settings (Default) (/data/data/)
echo.
echo 18) User Application Data and Settings (User 0) (/data/user/0/)
echo.
echo 19) Titanium Backup Storage (/sdcard/TitaniumBackup/)
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p androidpath=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %androidpath%==R goto main
if %androidpath%==r goto main


:: Reject any number lower than the lowest menu item
if %androidpath% lss 13 goto main2

:: Reject any number higher than the highest menu item
if %androidpath% gtr 19 goto main2

if %androidpath%==13 set androidpath=/data/app/

if %androidpath%==14 set androidpath=/system/app/

if %androidpath%==15 set androidpath=/system/bin/

if %androidpath%==16 set androidpath=/system/xbin/

if %androidpath%==17 set androidpath=/data/data/

if %androidpath%==18 set androidpath=/data/user/0/

if %androidpath%==19 set androidpath=/sdcard/TitaniumBackup/


set pagetwo=1


goto doview



:custpath
%showbanner%
echo.
echo.
echo Enter a custom path to view on device and Press ENTER:
echo.
echo.
echo Example: /system/bin/
echo.

set /p androidpath=


goto doview



:doview

%view% %androidpath% > "%temp%\adbtk-list-path.tmp"
start notepad.exe "%temp%\adbtk-list-path.tmp"


if %pagetwo%==0 goto reset
if %pagetwo%==1 goto main2



:end

%adbstart%
