@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:: Not Currently Working Re-Direct
::call "scripts\unavailable.cmd"
::goto end


:reset

:set_var
set action=99

set currentVer=99
set currentPath=bin\flashing\dfs
set rarfile=none
set rartext=none

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a DFS version from below and Press ENTER:
echo.
echo.
echo 1) DFS v4.6.5.1
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

set version=4.6.5.1
set rarfile=4.6.5.1.rar
set rartext=4.6.5.1

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

::"%temp%\adbtk\%rartext%\DFS.exe"

start "%temp%\adbtk\%rartext%" "%temp%\adbtk\%rartext%\DFS.exe"

goto reset



:end


