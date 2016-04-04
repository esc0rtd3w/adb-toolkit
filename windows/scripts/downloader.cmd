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

if not exist "%dl_path%\%remote_path%\" md "%dl_path%\%remote_path%\"

%dl_get%


:: Fix Slashes from "/" to "\" for Windows ONLY
set slashfix=%remote_path%
set slashfix=%slashfix:/=\%
set remote_path=%slashfix%

goto push



:push

%showbanner%
echo.
echo.
echo Do you want to copy %dl_filename% to your SD Card? [Y/N]:
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
echo Copying %dl_filename% to your SD Card....
echo.
echo.


%adb% push "%dl_path%\%remote_path%\%dl_filename%" /sdcard/


goto end




:end


