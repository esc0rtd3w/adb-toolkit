@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-

:: Not Currently Working Re-Direct
::call "scripts\unavailable.cmd"
::goto end

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
echo 1) iTunes Menu
echo.
echo 2) Jailbreak Tools
echo.
echo 3) File Transfer
echo.
echo 4) Download Firmware
echo.
echo 5) Misc
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
if %action% gtr 5 goto reset

if %action%==1 call "scripts\other_devices\apple\itunes\menu.cmd"

if %action%==2 call "scripts\other_devices\apple\jailbreak\menu.cmd"

if %action%==3 call "scripts\other_devices\apple\file_transfer\menu.cmd"

if %action%==4 call "scripts\other_devices\apple\firmware\menu.cmd"

if %action%==5 call "scripts\other_devices\apple\misc\menu.cmd"




goto reset


:end


