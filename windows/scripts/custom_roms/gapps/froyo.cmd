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
echo Select a device type from below and Press ENTER:
echo.
echo.
echo W) View All Froyo Google Apps on Webpage
echo.
echo.
echo 1) MDPI (Lower End Devices)
echo.
echo 2) MDPI Tiny (Lower End Devices)
echo.
echo 3) HDPI (Higher End Devices)
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

if %action%==W goto loadWeb
if %action%==w goto loadWeb


:: Reject any number higher than the highest menu item
if %action% gtr 3 goto reset

if %action%==1 call "scripts\custom_roms\gapps\froyo-mdpi.cmd"

if %action%==2 call "scripts\custom_roms\gapps\froyo-tiny.cmd"

if %action%==3 call "scripts\custom_roms\gapps\froyo-hdpi.cmd"




goto reset


:loadWeb

%miniweb% http://adbtoolkit.com/gapps/froyo/

goto reset


:end


