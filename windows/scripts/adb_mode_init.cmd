@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-

call "scripts\global.cmd"

set adbMode=none


:: Using default USB for now
goto opt1


:main
%cocolor% 0d
echo Current ADB Mode: %adbMode%
echo.
echo.
%cocolor% 0e
echo Select a new DEFAULT ADB MODE from below and Press ENTER:
echo.
echo.
echo You may also simply press ENTER to use the normal mode
echo.
echo.
echo 1) Normal (USB Cable)
echo.
echo 2) Wireless (ADB Wireless)
echo.
echo 3) Sideload (ADB Sideload)
echo.
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto end
if %action%==r goto end


:: Reject any number higher than the highest menu item
if %action% gtr 3 goto end

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

goto end


:opt1

set adbMode=usb

goto end


:opt2

set adbMode=wireless

goto end


:opt3

set adbMode=sideload

goto end


:end

if %adbMode%==none set adbMode=usb


