@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


explorer "bin\flashing\qpst"

:: Not Currently Working Re-Direct
call "scripts\unavailable.cmd"
goto end


:reset

:set_var
set action=99

set qpstinstallpath=none
set qpstrunpath=none
set qpstuninstallpath=none


::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Install QPST v2.7.323
echo.
echo 2) Run QPST v2.7.323
echo.
echo 3) Uninstall QPST v2.7.323
echo.
echo 4) Install QPST v2.7.366
echo.
echo 5) Run QPST v2.7.366
echo.
echo 6) Uninstall QPST v2.7.366
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
if %action% gtr 6 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6


goto reset



:opt1
set qpstinstallpath=

"%qpstinstallpath%"

goto reset


:opt2
set qpstrunpath=

"%qpstrunpath%"

goto reset


:opt3
set qpstuninstallpath=

"%qpstuninstallpath%"

goto reset


:opt4
set qpstinstallpath=

"%qpstinstallpath%"

goto reset


:opt5
set qpstrunpath=

"%qpstrunpath%"

goto reset


:opt6
set qpstinstallpath=

"%qpstinstallpath%"

goto reset


:end


