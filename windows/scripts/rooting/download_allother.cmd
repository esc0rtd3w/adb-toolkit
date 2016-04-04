@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

:: Not Currently Working Re-Direct
call "scripts\unavailable.cmd"
goto end


:set_var
set action=99

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
echo Select a Version to download from below and Press ENTER:
echo.
echo.
echo 1) 
echo.
echo 2) 
echo.
echo 3) 
echo.
echo 4) 
echo.
echo 5) 
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
if %action% gtr 5 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

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


