@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:: Not Currently Working Re-Direct
call "scripts\unavailable.cmd"
goto end


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
echo 1) I want to copy files (Copy files from device to computer and vice versa)
echo.
echo 2) I want to root my device (Includes custom recovery image flashing)
echo.
echo 3) I want to install a custom rom on my device (Install new Operating System)
echo.
echo 4) I want to install Google Apps on my device (Gmail, Maps, Youtube, etc)
echo.
echo 5) I want to overclock my device (Includes GPU, and CPU in most cases)
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
if %action% gtr 6 goto reset

if %action%==1 call "scripts\.cmd"

if %action%==2 call "scripts\.cmd"

if %action%==3 call "scripts\.cmd"

if %action%==4 call "scripts\.cmd"

if %action%==5 call "scripts\.cmd"




goto reset


:end


