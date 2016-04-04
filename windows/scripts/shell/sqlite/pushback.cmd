@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set pushpath=99

::call "scripts\get_info_bar.cmd"



:main

%showbanner%
echo.
echo.
echo Do you want to copy the modified file back to your device? [Y/N]:
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


if %pushpath%==N goto end
if %pushpath%==n goto end


:: Reject any number higher than the highest menu item
if %pushpath% gtr 0 goto end

goto pushnow


:pushnow
%showbanner%
echo.
echo.
%cocolor% 0a
echo Current File Copying to Device:
echo.
echo %pc_current_db_file%
%cocolor% 0e
echo.
echo.


%adb% push %pc_current_db_file% %device_current_db_file%


goto end



:end

::pause
