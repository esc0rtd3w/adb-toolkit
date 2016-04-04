@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set pushpath=99

::call "scripts\get_info_bar.cmd"



:main
::if %backflag%==1 goto end
%showbanner%
echo.
echo.
echo Do you want to copy this file to your SD Card? [Y/N]:
echo.
echo.
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p pushpath=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %pushpath%==R goto end
if %pushpath%==r goto end

if %pushpath%==Y goto pushnow
if %pushpath%==y goto pushnow

::if %pushpath%==YY goto pushnow
::if %pushpath%==yy goto pushnow
::if %pushpath%==Yy goto pushnow
::if %pushpath%==yY goto pushnow

if %pushpath%==N goto end
if %pushpath%==n goto end

::if %pushpath%==yn goto end
::if %pushpath%==yN goto end

:: Reject any number higher than the highest menu item
if %pushpath% gtr 0 goto end

goto pushnow


:pushnow
%showbanner%
echo.
echo.
echo Copying your selected gapps file to your SD Card....
echo.
echo.

::%adb% push %pushtemp% /sdcard/%zipname%
%adb% push %pushtemp% /sdcard/

::set backflag=1
goto end



:end

::pause
