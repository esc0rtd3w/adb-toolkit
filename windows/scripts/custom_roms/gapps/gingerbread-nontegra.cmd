@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

set backflag=0

:set_var
set action=99

set dl_path=c:\adbtk\gapps\gingerbread

set pushthis=call "scripts\custom_roms\gapps\push-gapps.cmd"

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a version from below and Press ENTER:
echo.
echo.
echo W) View All Gingerbread Google Apps on Webpage
echo.
echo.
echo 1) gapps-gb-20110828-signed.zip (Most Popular)
echo.
echo 2) gapps-gb-20110828_full-signed.zip
echo.
echo 3) gapps-gb-20110828-newtalk-signed.zip
echo.
echo 4) gapps-gb-20110828h-signed.zip
echo.
echo 5) gapps-gb-20110729-signed.zip
echo.
echo 6) gapps-gb-20110613-signed.zip
echo.
echo 7) gapps-gb-20110307-signed.zip
echo.
echo 8) gapps-gb-20110120-signed.zip
echo.
echo 9) gapps-gb-20110115-signed.zip
echo.
echo 10) gapps-gb-20110114-signed.zip
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
if %action% gtr 10 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

if %action%==7 goto opt7

if %action%==8 goto opt8

if %action%==9 goto opt9

if %action%==10 goto opt10


goto reset


:opt1
set zipname=gapps-gb-20110828-signed.zip
goto dlnow


:opt2
set zipname=gapps-gb-20110828_full-signed.zip
goto dlnow


:opt3
set zipname=gapps-gb-20110828-newtalk-signed.zip
goto dlnow


:opt4
set zipname=gapps-gb-20110828h-signed.zip
goto dlnow


:opt5
set zipname=gapps-gb-20110729-signed.zip
goto dlnow


:opt6
set zipname=gapps-gb-20110613-signed.zip
goto dlnow


:opt7
set zipname=gapps-gb-20110307-signed.zip
goto dlnow


:opt8
set zipname=gapps-gb-20110120-signed.zip
goto dlnow


:opt9
set zipname=gapps-gb-20110115-signed.zip
goto dlnow


:opt10
set zipname=gapps-gb-20110114-signed.zip
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

set dl_get=%wget% -O "%dl_path%\%zipname%" "%dl_server%/gapps/gingerbread/%zipname%"

%dl_get%

if exist "%dl_path%\%zipname%" set pushtemp="%dl_path%\%zipname%"

%pushthis%

explorer "%dl_path%"

goto reset


:loadWeb

%miniweb% http://adbtoolkit.com/gapps/gingerbread/

goto reset




:end


