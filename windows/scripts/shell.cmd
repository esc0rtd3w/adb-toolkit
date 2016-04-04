@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

::---------------------------------------------------------------
:: Auto Update
set script_version=1.0.0

set isbin=0
set isscript=1

::MagicSlot0

if %autoupdateflag%==1 call "scripts\update.cmd"
::---------------------------------------------------------------

::---------------------------------------------------------------
::MagicSlot1
::MagicSlot2
::MagicSlot3
::MagicSlot4
::---------------------------------------------------------------

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Get a Basic Shell Command Interface With Superuser Permissions
echo.
echo 2) Key Event Map (Home, Back, Menu, Search, Alpha, Num, etc)
echo.
echo 3) Touch Events (Simulated Touch, Swipe, Press, Click, etc)
echo.
echo 4) Take Screenshot on Device and View on PC
echo.
echo 5) Lockscreen Attacks (Disable Pattern, Disable Password, etc)
echo.
echo 6) SQLite Database Tools (Dumping, Copying, Viewing, Editing, etc)
echo.
echo 7) Launch an Application on Device (Activity Launcher)
echo.
echo 8) Make a Phone Call on Dialer
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
if %action% gtr 8 goto reset

if %action%==1 call "scripts\shell\su_shell.cmd"

if %action%==2 call "scripts\shell\eventmap.cmd"

if %action%==3 call "scripts\shell\touch.cmd"

if %action%==4 call "scripts\shell\take_screenshot.cmd"

if %action%==5 call "scripts\shell\lockscreen_attacks.cmd"

if %action%==6 call "scripts\shell\sqlite_tools.cmd"

if %action%==7 call "scripts\shell\applaunch.cmd"

if %action%==8 call "scripts\shell\dialer.cmd"


goto reset


:end


