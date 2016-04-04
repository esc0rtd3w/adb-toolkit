@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:: Not Currently Working Re-Direct
::call "scripts\unavailable.cmd"
::goto end


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
echo 1) Complete Linux Installer v1.1.4.apk 
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
if %action% gtr 1 goto reset

if %action%==1 goto opt1


:opt1

set dl_name=Complete Linux Installer v1.1.4.apk

goto dlnow


:dlnow
%showbanner%
echo.
echo.
echo Downloading %dl_name%....
echo.
echo.


if not exist "%dl_temp%" md "%dl_temp%"

%cocolor% 0a

set dl_get=%wget% -O "%dl_temp%\%dl_name%" "%dl_server%/linux-arm/installers/%dl_name%"

%dl_get%

explorer "%dl_temp%"

goto reset







:end


