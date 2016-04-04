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
echo 1) Apple
echo.
echo 2) Blackberry
echo.
echo 3) Microsoft
echo.
echo 4) Nokia
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

if %action%==1 call "scripts\other_devices\apple.cmd"

if %action%==2 call "scripts\other_devices\blackberry.cmd"

if %action%==3 call "scripts\other_devices\microsoft.cmd"

if %action%==4 call "scripts\other_devices\nokia.cmd"




goto reset


:end


