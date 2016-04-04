@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:: Check Root Status
if %rootstatus%==Unrooted %msgbox% %txtnoroot%


:set_var
set getss=%adb% shell screencap -p
set getsc=%adb% shell screenshot -i

set sendss=%adb% pull

set pngsource=/data/local/tmp/adbtk-screenshot.png
set pngdest="%temp%\adbtk-screenshot.png"

set removetempondevice=%adb% shell rm /data/local/tmp/adbtk-screenshot.png
set removetemponpc=del /f /q "%temp%\adbtk-screenshot.png"

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select Method of Capture and press ENTER:
echo.
echo.
echo 1) Screencap (Recommended)
echo.
echo 2) Screenshot (Sometimes captures below layers with low alpha)
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



:opt1
:: Take screenshot on device
%getss% %pngsource%

goto finishss


:opt2
:: Take screenshot on device
%getsc% %pngsource%

goto finishss


:finishss
:: Send screenshot to temp folder on PC
%sendss% %pngsource% %pngdest%

%wait% 3

:: Open screenshot on PC
%pngdest%



:: Remove temp PNG files
%removetempondevice%

:: Not removing temp file from PC until saving a copy gets resolved
%wait% 3
%removetemponpc%



:end


