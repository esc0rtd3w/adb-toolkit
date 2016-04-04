@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset


::call "scripts\get_info_bar.cmd"



:main
%cocolor% 0e
%showbanner%
echo.
echo.
echo Downloading %dl_filename%....
echo.
echo.


if not exist "%dl_path%" md "%dl_path%"

%cocolor% 0a

echo -------------------------------------------------------------------------------
set dl_get=%wget% -O "%dl_path%\%remote_path%\%dl_filename%" "%dl_server%/%remote_path%/%dl_filename%"
::set dl_get=%wget% -O "%dl_temp%\%dl_filename%" "%dl_server%/%remote_path%/%dl_filename%"

if not exist "%dl_path%\%remote_path%\" md "%dl_path%\%remote_path%\"


%dl_get%

:: Fix Slashes from "/" to "\" for Windows ONLY
set slashfix=%remote_path%
set slashfix=%slashfix:/=\%
set remote_path=%slashfix%


goto next


:next
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Copy %dl_filename% to SD Card
echo.
echo 2) Install %dl_filename% to Device
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
if %action% gtr 2 goto next

if %action%==1 goto push

if %action%==2 goto install


goto next



:push
%showbanner%
echo.
echo.
echo Copying %dl_filename% to your SD Card....
echo.
echo.

%adb% push "%dl_path%\%remote_path%\%dl_filename%" /sdcard/

goto end


:install
echo %dl_filename% | find ".apk"
if errorlevel==0 goto installapk

echo %dl_filename% | find ".zip"
if errorlevel==0 goto push

goto installbin



:installapk
%showbanner%
echo.
echo.
echo Installing %dl_filename% to your device....
echo.
echo.

%adb% push "%dl_path%\%remote_path%\%dl_filename%" %dev_appsystem%/.

goto end


:installbin
%showbanner%
echo.
echo.
echo Installing %dl_filename% to your device....
echo.
echo.


%adb% push "%dl_path%\%remote_path%\%dl_filename%" %dev_systembin%/%dl_filename%
%adb% shell "chown root.shell %dev_systembin%/%dl_filename%"
%adb% shell "chmod 06755 %dev_systembin%/%dl_filename%"
%adb% shell "rm %dev_xbin%/%dl_filename%"
%adb% shell "ln -s "%dl_path%\%remote_path%\%dl_filename%" %dev_xbin%/%dl_filename%"

goto end



:end


