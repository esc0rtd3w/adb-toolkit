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
echo 1) Change MTP to USB Mass Storage
echo.
echo 2) Change USB Mass Storage to MTP
echo.
echo 3) Other MTP and USB Mass Storage Options
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
if %action% gtr 3 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

goto reset


:opt1

%msgbox% "This will change your USB Mode from MTP to USB Mass Storage. This may potentially corrupt your access to USB Storage if your device is not compatible, or for any other number of reasons. This has been tested on various Samsung devices. It is recommended to have a good nandroid backup before continuing! Are you sure that you want to continue?" "Potential Temporary Corruption" YESNO

::%adb% shell setprop persist.sys.usb.config mass_storage

::if %errorlevel%==6 echo YES&pause
::if %errorlevel%==7 echo NO&pause

if %errorlevel%==6 goto rusure
if %errorlevel%==7 goto reset

goto reset

:rusure

%msgbox% "This is your last chance to keep your current USB Storage settings. Are you absolutely sure that you want to continue?" "Last Chance!" YESNO

if %errorlevel%==6 goto changemtp
if %errorlevel%==7 goto reset

goto reset


:changemtp
%adb% shell setprop persist.sys.usb.config mass_storage
::%adb% reboot

%msgbox% "Please reboot your device for the new settings to take effect. If you have troubles with connecting to USB after reboot, then please wipe cache and dalvik-cache from recovery." "Reboot Now" OK

goto reset


:opt2

call "scripts\unavailable.cmd"

goto reset


:opt3

call "scripts\unavailable.cmd"

goto reset


:end


