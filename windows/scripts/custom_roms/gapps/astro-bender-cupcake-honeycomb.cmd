@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=r

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo There are not any Google Apps available for these devices.
echo.
echo.
echo W) View All Astro-Bender-Cupcake-Honeycomb Google Apps on Webpage
echo.
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
if %action% gtr 0 goto reset



goto reset


:loadWeb

%miniweb% http://adbtoolkit.com/gapps/

goto reset


:end


