@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:: Getting ADB Root Access
%getadbroot%


:set_var
set action=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select Database Option from below and press ENTER:
echo.
echo.
echo 1) Copy a Known Database From Device to Computer and View/Edit
echo.
echo 2) Copy a Custom Database From Device to Computer and View/Edit
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



:opt1

call "scripts\shell\sqlite\known_databases.cmd"

goto reset


:opt2

call "scripts\shell\sqlite\custom_databases.cmd"

goto reset




:end


