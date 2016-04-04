@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

:set_var
set action=99

:: Setting default download path
set apkpath=bin/msl

:: Setting default remote path
set remote_path=BLANK

:: Setting Default Filename
set dl_filename=BLANK

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an MSL/SPC Option from below and Press ENTER:
echo.
echo.
echo 1) MSL Utility (APK)
echo.
echo 2) MSL Reader (APK)
echo.
echo 3) GetMyMSL (APK)
echo.
echo 4) Kyocera MSL Code (APK)
echo.
echo 5) MSL Finder (ZIP)
echo.
echo 6) Sprint MSL Finder (Flashable ZIP)
echo.
echo 7) MSL Generator (Windows Utility)
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
if %action% gtr 7 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

if %action%==7 goto opt7

goto reset


:opt1

%adb% install "%apkpath%\MSLUtility.apk"

goto reset


:opt2

%adb% install "%apkpath%\msl-reader.apk"

goto reset


:opt3

%adb% install "%apkpath%\getmymsl.apk"

goto reset


:opt4

%adb% install "%apkpath%\kyocera-msl-code.apk"

goto reset


:opt5

explorer "%apkpath%"

goto reset


:opt6

explorer "%apkpath%"

goto reset


:opt7

explorer "%apkpath%"

goto reset


:end


