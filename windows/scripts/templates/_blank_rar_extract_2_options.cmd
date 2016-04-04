@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:: Not Currently Working Re-Direct
::call "scripts\unavailable.cmd"
::goto end


:reset

:set_var
set action=99

set currentVer=99
set currentPath=pathNameHere
set rarfile=none
set rartext=none

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a ApplicationName version from below and Press ENTER:
echo.
echo.
echo 1) ApplicationName v0.0.0
echo.
echo 2) ApplicationName v0.0.0
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
if %action% gtr 2 goto reset

if %action%==1 goto opt1
if %action%==2 goto opt2

goto reset


:opt1

set version=0.0.0
set rarfile=0.0.0.rar
set rartext=0.0.0

goto doExtract

:opt2

set version=0.0.0
set rarfile=0.0.0.rar
set rartext=0.0.0

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

::"%temp%\adbtk\%rartext%\launchExe.exe"

start "%temp%\adbtk\%rartext%" "%temp%\adbtk\%rartext%\launchExe.exe"

goto reset



:end


