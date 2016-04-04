@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set phonenumber=r

set dial1=%adb% shell service call phone 2 s16 "+
set dial2="

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Enter the 10-Digit Phone Number to Dial below and Press ENTER:
echo.
echo.
echo Example: 14196985555
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p phonenumber=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %phonenumber%==R goto end
if %phonenumber%==r goto end


%dial1%%phonenumber%%dial2%


goto end


:end


