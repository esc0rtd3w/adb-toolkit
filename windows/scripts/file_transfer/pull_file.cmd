@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set filemode=PULL
set sourcefile=NONE
set destinationfile=NONE

::call "scripts\get_info_bar.cmd"




:main
set sourcefile=/sdcard/
%showbanner%
echo.
echo.
echo Current File Mode: %filemode%
echo.
echo.
echo Current Source: %sourcefile%
echo.
echo Current Destination: %destinationfile%
echo.
echo.
echo.
echo.
echo Type source file or directory on device and Press ENTER:
echo.
echo.
echo Be sure to include the trailing forward slash at the end of a directory "/"
echo.
echo.
echo.
echo Example: /sdcard/
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p sourcefile=



:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %sourcefile%==R goto end
if %sourcefile%==r goto end


goto chkdest


:chkdest
set destinationfile=%userprofile%\Desktop\
%showbanner%
echo.
echo.
echo Current File Mode: %filemode%
echo.
echo.
echo Current Source: %sourcefile%
echo.
echo Current Destination: %destinationfile%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: %userprofile%\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destinationfile=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destinationfile%==R goto end
if %destinationfile%==r goto end


goto execute



:execute
%adb% pull %sourcefile% %destinationfile%



:end


