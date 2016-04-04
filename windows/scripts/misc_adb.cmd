@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99
set emulator=%adb% emu
set sync=%adb% sync

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Logging (Dump State, View Logs, etc)
echo.
echo 2) Start ADB Server
echo.
echo 3) Stop ADB Server
echo.
echo 4) Wait For Device
echo.
echo 5) Sync Directories (Copy pc to device ONLY if changed)
echo.
echo 6) Run Emulator Console Command
echo.
echo 7) Forward TCP Socket Connections
echo.
echo 8) Change MTP to USB Mass Storage (Most Devices)
echo.
echo 9) Get Bug Report
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
if %action% gtr 9 goto reset

if %action%==1 call "scripts\misc_adb\logging.cmd"

if %action%==2 %adb% start-server

if %action%==3 %adb% kill-server 

if %action%==4 %adb% wait-for-device

if %action%==5 call "scripts\misc_adb\sync.cmd"

if %action%==6 call "scripts\misc_adb\emu.cmd"

if %action%==7 call "scripts\misc_adb\tcp_forward.cmd"

if %action%==8 call "scripts\misc_adb\mtpfix.cmd"

if %action%==9 call "scripts\misc_adb\bugreport.cmd"


goto reset





:end


