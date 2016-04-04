@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

set revver=99
set revpath=bin\flashing\revskills
set rarfile=none
set rartext=none

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a RevSkills version from below and Press ENTER:
echo.
echo.
echo 1) RevSkills v2.05.2
echo.
echo 2) RevSkills v2.08.6
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

set version=2.05.2
set rarfile=2.05.2.rar
set rartext=2.05.2

goto revlaunch

:opt2

set version=2.08.6
set rarfile=2.08.6.rar
set rartext=2.08.6

goto revlaunch



:revlaunch
%showbanner%
echo.
echo.
echo Extracting %rartext% to a temporary folder....
echo.
echo.
echo.

md "%temp%\adbtk"
rar x -y "%revpath%\%rarfile%" "%temp%\adbtk"

::"%temp%\adbtk\%rartext%\RevSkills.exe"

start "%temp%\adbtk\%rartext%" "%temp%\adbtk\%rartext%\RevSkills.exe"

goto reset



:end


