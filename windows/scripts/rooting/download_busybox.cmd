@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

:: Not Currently Working Re-Direct
call "scripts\unavailable.cmd"
goto end


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
echo Select a Busybox Version to download from below and Press ENTER:
echo.
echo.
echo 1) Busybox APK Format
echo.
echo 2) Busybox BIN Format
echo.
echo 3) Busybox ZIP Format
echo.
echo 4) Busybox Play Store Link (stericson.busybox)
echo.
echo 5) Busybox Installer Play Store Link (com.jrummy.busybox.installer)
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
if %action% gtr 5 goto reset

if %action%==1 call "scripts\rooting\download_busybox_apk.cmd"

if %action%==2 call "scripts\rooting\download_busybox_bin.cmd"

if %action%==3 call "scripts\rooting\download_busybox_zip.cmd"

if %action%==4 goto opt4

if %action%==5 goto opt5


goto reset


:opt1



goto reset


:opt2



goto reset


:opt3



goto reset


:opt4

start %browser% "https://play.google.com/store/apps/details?id=stericson.busybox&hl=en"

goto reset


:opt5

start %browser% "https://play.google.com/store/apps/details?id=com.jrummy.busybox.installer&hl=en"

goto reset



:end


