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
echo 1) SuperOneClick
echo.
echo 2) APK Install Rooting Files (z4Root, Universal Androot, Gingerbreak, etc) 
echo.
echo 3) Original OneClick (Rage Against The Cage)
echo.
echo 4) DooMLoRD (Zergrush)
echo.
echo 5) DebugFS Root
echo.
echo 6) Motorola OneClick Root, Petes Motorola Support Tools, etc
echo.
echo 7) KMS, ShabbyMod, Captivate 1-Click, etc (Samsung Devices, possibly others) 
echo.
echo 8) Other OneClick Tools
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
if %action% gtr 4 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4



goto reset



:opt1



goto reset


:opt2



goto reset


:opt3



goto reset


:opt4



goto reset




:end


