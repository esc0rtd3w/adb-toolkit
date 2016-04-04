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
echo Select an ACTION from below to perform on Device and Press ENTER:
echo.
echo 1) Launch a Pre-Defined App
echo.
echo 2) Launch a Custom App
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

if %action%==2 goto opt2


goto reset


:opt1

call "scripts\shell\applaunch_preset.cmd"

goto reset


:opt2

call "scripts\shell\applaunch_custom.cmd"

goto reset



:end

