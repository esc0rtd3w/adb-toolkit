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
echo 1) Backtrack 5
echo.
echo 2) Debian
echo.
echo 3) Ubuntu
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
if %action% gtr 3 goto reset

if %action%==1 call "scripts\other_utils\linux_installers\backtrack.cmd"

if %action%==2 call "scripts\other_utils\linux_installers\debian.cmd"

if %action%==3 call "scripts\other_utils\linux_installers\ubuntu.cmd"


goto reset


:end


