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
echo 1) Choose Device By Manufacturer
echo.
echo 2) Universal and Multi Device Rooting Solutions
echo.
echo 3) S-Off Tools (HTC Devices Only)
echo.
echo 4) Manual Exploitation (Select exploit, su, busybox, and root your device)
echo.
echo 5) Download Superuser and SuperSU Binaries and APK Files
echo.
echo 6) Download Busybox Binaries and APK Files
echo.
echo 7) Download SQLite Binaries and APK Files
echo.
echo 8) Download All Other Rooting Related Files
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
if %action% gtr 8 goto reset

if %action%==1 call "scripts\rooting\devices.cmd"

if %action%==2 call "scripts\rooting\universal.cmd"

if %action%==3 call "scripts\rooting\soff.cmd"

if %action%==4 call "scripts\rooting\manual.cmd"

if %action%==5 call "scripts\rooting\download_superuser.cmd"

if %action%==6 call "scripts\rooting\download_busybox.cmd"

if %action%==7 call "scripts\rooting\download_sqlite.cmd"

if %action%==8 call "scripts\rooting\download_allother.cmd"

goto reset


:end


