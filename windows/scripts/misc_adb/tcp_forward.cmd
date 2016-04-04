@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


call "scripts\unavailable.cmd"
goto end


:reset

:set_var
set iplocal=99

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
echo Enter a Local IP Address and Press ENTER:
echo.
echo.
echo Current LAN: %eth0_ip%
echo.
echo Current WIFI: %wlan0_ip%
echo.
echo Other Found IPs: [%eth1_ip%] [%wlan1_ip%]
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p iplocal=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %iplocal%==R goto end
if %iplocal%==r goto end


:: Reject any number higher than the highest menu item
if %iplocal% gtr 5 goto reset

if %iplocal%==1 goto opt1

if %iplocal%==2 goto opt2

if %iplocal%==3 goto opt3

if %iplocal%==4 goto opt4

if %iplocal%==5 goto opt5

goto reset


:opt1



goto reset


:opt2



goto reset


:opt3



goto reset


:opt4



goto reset


:opt5



goto reset


:end


