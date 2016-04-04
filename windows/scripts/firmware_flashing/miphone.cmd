@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:: Not Currently Working Re-Direct
::call "scripts\unavailable.cmd"
::goto end


:reset

:set_var
set action=99

set currentVer=99
set currentPath=bin\flashing\miphone
set rarfile=none
set rartext=none

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a MiPhone version from below and Press ENTER:
echo.
echo.
echo 1) MiPhone v2.11.6
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

goto reset


:opt1

set version=2.11.6
set rarfile=2.11.6.rar
set rartext=2.11.6

goto doExtract



:doExtract
%showbanner%
echo.
echo.
echo Extracting %rartext% to a temporary folder....
echo.
echo.
echo.

md "%temp%\adbtk"
rar x -y "%currentPath%\%rarfile%" "%temp%\adbtk"

::"%temp%\adbtk\%rartext%\MiFlash.exe"

start "%temp%\adbtk\%rartext%" "%temp%\adbtk\%rartext%\MiFlash.exe"

goto reset



:end


