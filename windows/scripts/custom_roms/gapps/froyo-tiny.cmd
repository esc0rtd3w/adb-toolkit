@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

set backflag=0

:set_var
set action=99

set dl_path=c:\adbtk\gapps\froyo

set pushthis=call "scripts\custom_roms\gapps\push-gapps.cmd"

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a version from below and Press ENTER:
echo.
echo.
echo W) View All Froyo Google Apps on Webpage
echo.
echo.
echo 1) gapps-mdpi-tiny-20101020-signed.zip (Most Popular)
echo.
echo 2) gapps-mdpi-tiny-20100930-signed.zip
echo.
echo 3) gapps-mdpi-tiny-20100917-signed.zip
echo.
echo 4) gapps-mdpi-tiny-20100816-signed.zip
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
if %action% gtr 4 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4


goto reset



:opt1
set zipname=gapps-mdpi-tiny-20101020-signed.zip
goto dlnow


:opt2
set zipname=gapps-mdpi-tiny-20100930-signed.zip
goto dlnow


:opt3
set zipname=gapps-mdpi-tiny-20100917-signed.zip
goto dlnow


:opt4
set zipname=gapps-mdpi-tiny-20100816-signed.zip
goto dlnow



:dlnow
%showbanner%
echo.
echo.
echo Downloading %zipname%....
echo.
echo.


if not exist "%dl_path%" md "%dl_path%"

%cocolor% 0a

set dl_get=%wget% -O "%dl_path%\%zipname%" "%dl_server%/gapps/froyo/%zipname%"

%dl_get%

if exist "%dl_path%\%zipname%" set pushtemp="%dl_path%\%zipname%"

%pushthis%

explorer "%dl_path%"

goto reset


:loadWeb

%miniweb% http://adbtoolkit.com/gapps/froyo/

goto reset



:end


