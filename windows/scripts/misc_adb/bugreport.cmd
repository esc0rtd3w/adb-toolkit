@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

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
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Log Bug Report To Screen Only
echo.
echo 2) Log Bug Report To File
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

%adb% bugreport

goto reset


:opt2

echo.
echo.
echo Your device should vibrate once when starting the log.
echo.
echo Your device should vibrate three times when closing the log.
echo.
echo.
echo Some devices may vary.
echo.
echo.
echo.
echo Please be patient. This may take a few minutes....
echo.
echo.

%adb% bugreport > %dl_path%\bugreport-%autoserial%.txt

start notepad.exe %dl_path%\bugreport-%autoserial%.txt

goto reset


:end


