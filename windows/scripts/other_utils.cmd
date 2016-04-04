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
echo 1) Misc ADB Functions (Logging, Start/Stop Server, Forward TCP, etc)
echo.
echo 2) Linux Installers (Install Linux Distros To Your Device)
echo.
echo 3) APK Tools (Unpack, Repack, and Sign Android Install Packages)
echo.
echo 4) AXML Converter and Viewer (Convert AXML to XML)
echo.
echo 5) unyaffs Tool (Extract .img files used with yaffs2 compression)
echo.
echo 6) Mini Partition Wizard (Used for partitioning SD Cards and other media)
echo.
echo 7) MSL/SPC Utilities and Tools (Retrieve MSL/SPC Codes From Device)
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
if %action% gtr 7 goto reset

if %action%==1 call "scripts\misc_adb.cmd"

if %action%==2 call "scripts\other_utils\linux_installers.cmd"

if %action%==3 call "scripts\other_utils\apktools.cmd"

if %action%==4 call "scripts\other_utils\axml.cmd"

if %action%==5 call "scripts\other_utils\unyaffs.cmd"

if %action%==6 call "scripts\other_utils\minipw.cmd"

if %action%==7 call "scripts\other_utils\msltools.cmd"


goto reset


:end


