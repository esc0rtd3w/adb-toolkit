@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


set fingerstatus=None
set lastaction=None


:reset

:set_var
set action=99

:: Setting default download path
set dl_path=c:\adbtk

:: Setting default remote path
set remote_path=BLANK

:: Setting Default Filename
set dl_filename=BLANK

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
%cocolor% 0a
echo Finger Status: %fingerstatus%     Last Action: %lastaction%
%cocolor% 0e
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Single Click
echo.
echo 2) Double Click
echo.
echo 3) Press Finger
echo.
echo 4) Release Finger
echo.
echo 5) Swipe Up
echo.
echo 6) Swipe Down
echo.
echo 7) Swipe Left
echo.
echo 8) Swipe Right
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

:: Check Next Page flag
if %action%==N goto end
if %action%==n goto end

:: Reject any number higher than the highest menu item
if %action% gtr 8 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

if %action%==7 goto opt7

if %action%==8 goto opt8


goto reset



:opt1

set fingerstatus=None

call "scripts\shell\touch\click_single.cmd"

set lastaction=Click Single

goto reset


:opt2

set fingerstatus=None

call "scripts\shell\touch\click_double.cmd"

set lastaction=Click Double

goto reset


:opt3

set fingerstatus=Finger is Pressed

call "scripts\shell\touch\press_finger.cmd"

set lastaction=Press Finger

goto reset


:opt4

set fingerstatus=None

call "scripts\shell\touch\release_finger.cmd"

set lastaction=Release Finger

goto reset


:opt5

set fingerstatus=None

call "scripts\unavailable.cmd"
::call "scripts\shell\touch\swipe_up.cmd"

set lastaction=Swipe Up

goto reset


:opt6

set fingerstatus=None

call "scripts\unavailable.cmd"
::call "scripts\shell\touch\swipe_down.cmd"

set lastaction=Swipe Down

goto reset


:opt7

set fingerstatus=None

call "scripts\unavailable.cmd"
::call "scripts\shell\touch\swipe_left.cmd"

set lastaction=Swipe Left

goto reset


:opt8

set fingerstatus=None

call "scripts\unavailable.cmd"
::call "scripts\shell\touch\swipe_right.cmd"

set lastaction=Swipe Right

goto reset



:end


