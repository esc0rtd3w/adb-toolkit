@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:: Not Currently Working Re-Direct
call "scripts\unavailable.cmd"
goto end


:set_var
set action=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Drag or type a CUSTOM BINARY into this window and Press ENTER:
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
::if %action% gtr 5 goto reset



: Misc
::%adb% shell rm /sdcard/PG05IMG.zip


call "scripts\rooting\recovery.cmd"




:end


