@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

set backflag=0

:set_var
set action=r

set dl_path=c:\adbtk\gapps\kitkat

set pushthis=call "scripts\custom_roms\gapps\push-gapps.cmd"

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo A) Show 4.4 - 4.4.2 Archive
echo.
echo B) Show 4.4.3 - 4.4.4 Archive
echo.
echo W) View All KitKat Google Apps on Webpage
echo.
echo.
echo 1) gapps-kk-20140105-5-signed.zip (4.4.3)
echo.
echo 2) gapps-kk-20140602-3-signed.zip (4.4 - 4.4.2)
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

if %action%==A goto archive1
if %action%==a goto archive1

if %action%==B goto archive2
if %action%==b goto archive2

if %action%==W goto loadWeb
if %action%==w goto loadWeb


:: Reject any number higher than the highest menu item
if %action% gtr 2 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2


goto reset


:opt1
set zipname=gapps-kk-20140105-5-signed.zip
goto dlnow

:opt2
set zipname=gapps-kk-20140602-3-signed.zip
goto dlnow



:archive1

set dl_path=c:\adbtk\gapps\kitkat\4.4.x

%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo W) View All KitKat Google Apps on Webpage
echo.
echo.
echo 1) gapps-kk-20140105-5-signed.zip
echo.
echo 2) gapps-kk-20140508-signed.zip
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto main
if %action%==r goto main

if %action%==W goto loadWeb
if %action%==w goto loadWeb


:: Reject any number higher than the highest menu item
if %action% gtr 2 goto archive1

if %action%==1 goto a1opt1

if %action%==2 goto a1opt2


:a1opt1
set zipname=gapps-kk-20140105-5-signed.zip
goto dlnow

:a1opt2
set zipname=
goto dlnow


goto archive1



:archive2

set dl_path=c:\adbtk\gapps\kitkat\4.4.3

%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo W) View All KitKat Google Apps on Webpage
echo.
echo.
echo 1) gapps-kk-20140602-3-signed.zip
echo.
echo 2) gapps-kk-20140602-2-signed.zip
echo.
echo 3) gapps-kk-20140602-1-signed.zip
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto main
if %action%==r goto main

if %action%==W goto loadWeb
if %action%==w goto loadWeb


:: Reject any number higher than the highest menu item
if %action% gtr 3 goto archive2

if %action%==1 goto a2opt1

if %action%==2 goto a2opt2

if %action%==3 goto a2opt3

goto archive2


:a2opt1
set zipname=gapps-kk-20140602-3-signed.zip
goto dlnow

:a2opt2
set zipname=gapps-kk-20140602-2-signed.zip
goto dlnow

:a2opt3
set zipname=gapps-kk-20140602-1-signed.zip
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

set dl_get=%wget% -O "%dl_path%\%zipname%" "%dl_server%/gapps/kitkat/%zipname%"

%dl_get%

if exist "%dl_path%\%zipname%" set pushtemp="%dl_path%\%zipname%"

%pushthis%

explorer "%dl_path%"

goto reset


:loadWeb

%miniweb% http://adbtoolkit.com/gapps/kitkat/

goto reset




:end


