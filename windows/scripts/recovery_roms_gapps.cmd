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
echo 1) Download and Install Google Apps (gapps)
echo.
echo 2) Recovery Images
echo.
echo 3) Stock Rom Images
echo.
echo 4) Custom Rom Images
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

if %action%==1 call "scripts\custom_roms\gapps.cmd"

if %action%==2 call "scripts\recovery\devices.cmd"

if %action%==3 call "scripts\stock_roms\devices.cmd"

if %action%==4 call "scripts\custom_roms\devices.cmd"




goto reset


:end


