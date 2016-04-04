@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

set backflag=0

:set_var
set action=99

set dl_path=c:\adbtk\gapps\eclair

set pushthis=call "scripts\custom_roms\gapps\push-gapps.cmd"


::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a version from below and Press ENTER:
echo.
echo.
echo 1) Install MobileODIN Lite To Your Device
echo.
echo 2) Select a FlashKernel (APK Format)
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
if %action% gtr 2 goto reset

if %action%==1 goto opt1

if %action%==2 call "scripts\firmware_flashing\flashkernel.cmd"


goto reset

:opt1

%adb% install "bin\flashing\apk\MobileODINLite.apk"

goto reset



:end


