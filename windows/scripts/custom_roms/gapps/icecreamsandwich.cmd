@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

set backflag=0

:set_var
set action=99

set dl_path=c:\adbtk\gapps\icecreamsandwich

set pushthis=call "scripts\custom_roms\gapps\push-gapps.cmd"

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo W) View All Ice Cream Sandwich Google Apps on Webpage
echo.
echo.
echo 1) gapps-ics-20120429-signed.zip (Most Popular)
echo.
echo 2) mini-gapps-ics-20120429b-signed.zip
echo.
echo 3) gapps-ics-20120511-fixed.zip
echo.
echo 4) gapps-ics-20120511-trimmed.zip
echo.
echo 5) gapps-ics-20120422-signed.zip
echo.
echo 6) gapps-ics-20120317-signed.zip
echo.
echo 7) gapps-ics-20120304-signed.zip
echo.
echo 8) gapps-ics-20120224-signed.zip
echo.
echo 9) gapps-ics-20120215-signed.zip
echo.
echo 10) gapps-ics-20120213-signed.zip
echo.
echo 11) gapps-ics-20120212-signed.zip
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto end
if %action%==r goto end

:: Check Next Page flag
if %action%==N goto main2
if %action%==n goto main2

if %action%==W goto loadWeb
if %action%==w goto loadWeb


:: Reject any number higher than the highest menu item
if %action% gtr 11 goto reset

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

if %action%==11 goto opt11


goto reset



:main2
set action=99
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 12) gapps-ics-20120207-signed.zip
echo.
echo 13) gapps-ics-20120201-signed.zip
echo.
echo 14) gapps-ics-4.0.3-20111217_datainstall_5.zip
echo.
echo 15) gapps-ics-facelock-20120131-signed.zip
echo.
echo 16) gapps-osp-signed.zip
echo.
echo 17) gapps_ics_4.0.3_v8.zip
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

:: Reject any number lower than the lowest menu item
if %action% lss 12 goto main2

:: Reject any number higher than the highest menu item
if %action% gtr 17 goto main2

if %action%==12 goto opt12

if %action%==13 goto opt13

if %action%==14 goto opt14

if %action%==15 goto opt15

if %action%==16 goto opt16

if %action%==17 goto opt17


goto reset



:opt1
set zipname=gapps-ics-20120429-signed.zip
goto dlnow

:opt2
set zipname=mini-gapps-ics-20120429b-signed.zip
goto dlnow


:opt3
set zipname=gapps-ics-20120511-fixed.zip
goto dlnow


:opt4
set zipname=gapps-ics-20120511-trimmed.zip
goto dlnow


:opt5
set zipname=gapps-ics-20120422-signed.zip
goto dlnow


:opt6
set zipname=gapps-ics-20120317-signed.zip
goto dlnow


:opt7
set zipname=gapps-ics-20120304-signed.zip
goto dlnow


:opt8
set zipname=gapps-ics-20120224-signed.zip
goto dlnow


:opt9
set zipname=gapps-ics-20120215-signed.zip
goto dlnow


:opt10
set zipname=gapps-ics-20120213-signed.zip
goto dlnow


:opt11
set zipname=gapps-ics-20120212-signed.zip
goto dlnow



:opt12
set zipname=gapps-ics-20120207-signed.zip
goto dlnow


:opt13
set zipname=gapps-ics-20120201-signed.zip
goto dlnow


:opt14
set zipname=gapps-ics-4.0.3-20111217_datainstall_5.zip
goto dlnow


:opt15
set zipname=gapps-ics-facelock-20120131-signed.zip
goto dlnow


:opt16
set zipname=gapps-osp-signed.zip
goto dlnow


:opt17
set zipname=gapps_ics_4.0.3_v8.zip
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

set dl_get=%wget% -O "%dl_path%\%zipname%" "%dl_server%/gapps/icecreamsandwich/%zipname%"

%dl_get%

if exist "%dl_path%\%zipname%" set pushtemp="%dl_path%\%zipname%"

%pushthis%

explorer "%dl_path%"

goto reset


:loadWeb

%miniweb% http://adbtoolkit.com/gapps/icecreamsandwich/

goto reset



:end


