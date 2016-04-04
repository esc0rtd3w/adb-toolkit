@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:: Not Currently Working Re-Direct
::call "scripts\unavailable.cmd"
::goto end

:reset

:set_var
set rsdver=99
set rsdpath=bin\flashing\rsdlite
set rarfile=none
set rartext=none

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an RSDLite version from below and Press ENTER:
echo.
echo.
echo 1) RSDLite v6.1.5
echo.
echo 2) RSDLite v6.1.6
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p rsdver=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %rsdver%==R goto end
if %rsdver%==r goto end


:: Reject any number higher than the highest menu item
if %rsdver% gtr 2 goto reset

if %rsdver%==1 goto opt1

if %rsdver%==2 goto opt2



goto reset


:opt1

set rarfile=6.1.5.rar
set rartext=6.1.5

goto dotemp


:opt2

set rarfile=6.1.6.rar
set rartext=6.1.6

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
rar x -y "%rsdpath%\%rarfile%" "%temp%\adbtk"

::"%temp%\adbtk\%rartext%\SDL.exe"

start "%temp%\adbtk\%rartext%" "%temp%\adbtk\%rartext%\SDL.exe"

goto reset




:end


