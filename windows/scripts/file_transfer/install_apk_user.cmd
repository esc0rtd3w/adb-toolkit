@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-

color 0e


:reset

:set_var
set action=99
set apkfile=NONE
set apkinstall=%adb% install
set filemode=USER INSTALL

::call "scripts\get_info_bar.cmd"



:: Add previous APK installed as second variable


:main
%showbanner%
echo.
echo.
echo Current File Mode: %filemode%
echo.
echo Current APK File Selected: %apkfile%
echo.
echo.
echo.
echo.
echo Drag an APK file onto this window and press ENTER....
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p apkfile=

:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %apkfile%==R goto end
if %apkfile%==r goto end


if %apkfile%==NONE goto reset
if not %apkfile%==NONE goto install
goto end


:install
%showbanner%
echo.
echo.
echo Currently Installing: %apkfile%
echo.
echo.

%apkinstall% %apkfile%

pause

goto reset


:end


