@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

:set_var
set bitpimver=99
set bitpimpath=bin\flashing\bitpim
set rarfile=none
set rartext=none

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an BitPim version from below and Press ENTER:
echo.
echo.
echo 1) BitPim v1.0.7
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p bitpimver=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %bitpimver%==R goto end
if %bitpimver%==r goto end


:: Reject any number higher than the highest menu item
if %bitpimver% gtr 1 goto reset

if %bitpimver%==1 goto opt1

goto reset


:opt1

set rarfile=1.0.7.rar
set rartext=BitPim

goto dotemp



:dotemp
%showbanner%
echo.
echo.
echo Extracting %rartext% to a temporary folder....
echo.
echo.
echo.

md "%temp%\adbtk"
rar x -y "%bitpimpath%\%rarfile%" "%temp%\adbtk"

start "%bitpimpath%" "%temp%\adbtk\%rartext%\bitpimw.exe"

goto reset




:end


