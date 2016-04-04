@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set appname=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Type or paste an App Name with Activity and Press ENTER:
echo.
echo.
echo Example: com.cyanogenmod.trebuchet/.Launcher
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p appname=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %appname%==R goto end
if %appname%==r goto end


:: Reject any number higher than the highest menu item
if %appname% gtr 0 goto reset


%applaunch% %appname%


goto reset


:end

