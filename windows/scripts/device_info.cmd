@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

if not exist "%dl_temp%" md "%dl_temp%"

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
echo 1) Get Multiple Device States (Displays all connected devices)
echo.
echo 2) Get Wifi Network Info (Show Lease Info, IP Address, Subnet Mask)
echo.
echo 3) Get Battery Stats (Percentage, Charging Status, Battery Info)
echo.
echo 4) Check Running Times on Device (Up Time, Idle Time, Sleep Time)
echo.
echo 5) View System Info (Data From build.prop, g.prop, and others)
echo.
echo 6) View Logcat (Live device log)
echo.
echo 7) View Events (Live Event Log, Touch Events, etc)
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
if %action% gtr 7 goto reset


::for /f "delims=" %a in ('%adb% get-state ^| findstr /v "device"') do @set myvar=%a


if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

if %action%==7 goto opt7


goto reset


:opt1

call "scripts\multi_device.cmd"

goto reset


:opt2
%showbanner%
echo.
echo.

%cocolor% 0b
%adb% shell showlease wlan0
%cocolor% 0e

echo.
echo.
echo Press any key to return to menu....
echo.
pause>nul

goto reset

goto reset


:opt3
%showbanner%
echo.
echo.

%cocolor% 0b
%adb% shell dumpsys battery
%cocolor% 0e

echo.
echo.
echo Press any key to return to menu....
echo.
pause>nul

goto reset


:opt4
%showbanner%
echo.
echo.

%cocolor% 0b
%adb% shell uptime
%cocolor% 0e

echo.
echo.
echo Press any key to return to menu....
echo.
pause>nul

goto reset


:opt5
call "scripts\device_info\view_build_prop.cmd"

goto reset


:opt6
set logcatoption=99
%showbanner%
echo.
echo.
echo Select Logcat Options from below and Press ENTER:
echo.
echo.
echo 1) Run Logcat and Display On Screen Only
echo.
echo 2) Run Logcat and Record Text File Locally
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p logcatoption=

:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %logcatoption%==R goto main
if %logcatoption%==r goto main


:: Reject any number higher than the highest menu item
if %logcatoption% gtr 2 goto opt6


::for /f "delims=" %a in ('%adb% get-state ^| findstr /v "device"') do @set myvar=%a


if %logcatoption%==1 goto nolog

if %logcatoption%==2 goto dolog

goto reset


:opt7
set geteventoption=99
%showbanner%
echo.
echo.
echo Select Event Viewer Options from below and Press ENTER:
echo.
echo.
echo 1) Run "getevent" and Display On Screen Only
echo.
echo 2) Run "getevent" and Record Text File Locally
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p geteventoption=

:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %geteventoption%==R goto main
if %geteventoption%==r goto main


:: Reject any number higher than the highest menu item
if %geteventoption% gtr 2 goto opt7


if %geteventoption%==1 goto event

if %geteventoption%==2 goto eventlog

goto reset


:event
%showbanner%
echo.
echo.
echo You will have to use CTRL+C to break out of the event viewer!
echo.
echo.
echo If prompted "Terminate batch job", type "N" and press ENTER to return to menu
echo.
echo.
echo.
echo.
echo Press any key to continue....
echo.
pause>nul
%cocolor% 0b
%adb% shell getevent

goto opt7


:eventlog
%showbanner%
echo.
echo.
echo You will have to use CTRL+C to break out of the writing cycle!
echo.
echo.
echo If prompted "Terminate batch job", type "N" and press ENTER to return to menu
echo.
echo.
echo.
echo.
%cocolor% 0b
echo Writing Log File To: "%dl_temp%\getevent.txt"....
%cocolor% 0e
echo.
echo.

::echo. > "%dl_temp%\getevent.txt"

::%tail% "%dl_temp%\getevent.txt"

%adb% shell getevent > "%dl_temp%\getevent.txt"

start notepad "%dl_temp%\getevent.txt"

goto opt7



:nolog
%showbanner%
echo.
echo.
echo You will have to use CTRL+C to break out of the log viewer!
echo.
echo.
echo If prompted "Terminate batch job", type "N" and press ENTER to return to menu
echo.
echo.
echo.
echo.
echo Press any key to continue....
echo.
pause>nul
%cocolor% 0b
%adb% shell logcat

goto opt6


:dolog
%showbanner%
echo.
echo.
echo You will have to use CTRL+C to break out of the writing cycle!
echo.
echo.
echo If prompted "Terminate batch job", type "N" and press ENTER to return to menu
echo.
echo.
echo.
echo.
%cocolor% 0b
echo Writing Log File To: "%dl_temp%\logcat.txt"....
%cocolor% 0e
echo.
echo.

::echo. > "%dl_temp%\logcat.txt"

::%tail% "%dl_temp%\logcat.txt"

%adb% shell logcat > "%dl_temp%\logcat.txt"

start notepad "%dl_temp%\logcat.txt"

goto opt6


:end


