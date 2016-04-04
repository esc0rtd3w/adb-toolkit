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
echo Select a Superuser Version to download from below and Press ENTER:
echo.
echo.
echo 1) Superuser APK Format
echo.
echo 2) Superuser BIN Format
echo.
echo 3) Superuser ZIP Format
echo.
echo 4) Superuser Play Store Link (com.noshufou.android.su)
echo.
echo 5) Superuser Elite Play Store Link (com.noshufou.android.su.elite)
echo.
echo 6) SuperSU APK Format
echo.
echo 7) SuperSU BIN Format
echo.
echo 8) SuperSU ZIP Format
echo.
echo 9) SuperSU Play Store Link (eu.chainfire.supersu)
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
if %action% gtr 9 goto reset

if %action%==1 call "scripts\rooting\download_superuser_apk.cmd"

if %action%==2 call "scripts\rooting\download_superuser_bin.cmd"

if %action%==3 call "scripts\rooting\download_superuser_zip.cmd"

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 call "scripts\rooting\download_supersu_apk.cmd"

if %action%==7 call "scripts\rooting\download_supersu_bin.cmd"

if %action%==8 call "scripts\rooting\download_supersu_zip.cmd"

if %action%==9 goto opt9

goto reset


:opt1



goto reset


:opt2



goto reset


:opt3



goto reset


:opt4

start %browser% "https://play.google.com/store/apps/details?id=com.noshufou.android.su&hl=en"

goto reset


:opt5

start %browser% "https://play.google.com/store/apps/details?id=com.noshufou.android.su.elite&hl=en"

goto reset


:opt6



goto reset


:opt7



goto reset


:opt8



goto reset


:opt9

start %browser% "https://play.google.com/store/apps/details?id=eu.chainfire.supersu&hl=en"

goto reset



:end


