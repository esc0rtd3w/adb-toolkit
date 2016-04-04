@echo off

title Android ADB Toolkit                                        -[ adbtoolkit.com ]-


:reset

:: Get Windows OS Version
%check_os%

if not exist "%dl_temp%\build_prop" md "%dl_temp%\build_prop"


:checkadb
:: Removed 20140408 because of adbroot problems with stock secure kernels
::%tasklist% | find "adb.exe"
::if %errorlevel%==0 goto main
::if %errorlevel%==1 %getadbroot%
::if %errorlevel%==1 %adbstart%

%taskkill% /f /t /im adb.exe
%adbstart%


goto main


:main
%cocolor% 0c
%showbanner%
%cocolor% 0e
echo.
echo.
echo Getting device info....
echo.
echo.
echo IF YOU SEE THIS MESSAGE LONGER THAN 10 SECONDS PLEASE CLOSE AND RESTART!
echo.
echo.
echo MAKE SURE "USB DEBUGGING" IS TURNED ON AND YOU HAVE DRIVERS INSTALLED!
echo.
echo ALSO MAKE SURE IF ON JELLYBEAN AND HIGHER YOU ALLOW THE DEVICE FINGERPRINT!
echo.
echo.

::---------------------------------------------------------------
:: Set Auto State

for /f "delims=" %%a in ('adb get-state ^| findstr /v "blankstring"') do @set autostate=%%a

if %autostate%==device set autostate=Online
if %autostate%==unknown set autostate=Offline
if %autostate%==bootloader set autostate=Bootloader


:: Check fastboot status for banner color change (added 20140628)

::for /f "delims=" %%a in ('bin\files\fastboot.exe devices ^| findstr /v "blankstring"') do @set fastbootstate=%%a

::echo %fastbootstate%
::if "%fastbootstate%"=="" set fastbootstate=Inactive
::if "%fastbootstate%" neq "" set fastbootstate=Active

::pause


if %autostate%==Bootloader goto end2
if %autostate%==Offline goto end2
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Get build.prop properties
call "scripts\build_prop.cmd"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Set Auto Serial Number
for /f "delims=" %%d in ('adb get-serialno ^| findstr /v "blankstring"') do @set autoserial=%%d
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Get Root Status

:: Get SU Version Number
for /f "delims=" %%e in ('adb shell /system/xbin/su -v ^| findstr /v "blankstring"') do @set autosuver=%%e


:: CM10.1 SU Checks
set autosuver_cm10=0
if "%autosuver%"=="1 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="2 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="3 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="4 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="5 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="6 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="7 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="8 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="9 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="10 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="11 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="12 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="13 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="14 com.android.settings" set autosuver_cm10=1
if "%autosuver%"=="15 com.android.settings" set autosuver_cm10=1


:: Get SU Status
set rootaccess=1

:: Temp fix for determining SuperUser status
if "%autosuver%"=="/system/bin/sh: /system/xbin/su: not found" set rootaccess=0
if "%autosuver%"=="/system/xbin/su: not found" set rootaccess=0
if "%autosuver%"=="/system/xbin/sh: not found" set rootaccess=0


if %rootaccess%==1 set rootstatus=Rooted
if %rootaccess%==0 set rootstatus=Unrooted



:: Setup version number for output on info bar
if %rootstatus%==Rooted set suversion=%autosuver%
if %rootstatus%==Unrooted set suversion=Unrooted
::---------------------------------------------------------------



:continue
::---------------------------------------------------------------
:: Modify variable output
if %autostate%==device set autostate=Online
if %autostate%==unknown set autostate=Offline
if %autostate%==bootloader set autostate=Bootloader

::if %autoserial%==unknown set autoserial=Unavailable
if %autoserial%==unknown set autoserial=N/A
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Get Hboot Version
::adb shell getprop ro.bootloader
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Multi Device Handling
::set multicheck=""
::for /f "tokens=1-4" %%g in ( 'adb devices' ) do ( set multicheck="%%g %%h %%i %%j" ) 
::if /i %multicheck% == %multistatus% ( set multicheck=single)
::if /i not %multicheck% == %multistatus% ( set multicheck=multi)

::echo %multicheck%
::pause
::---------------------------------------------------------------



:end


:: Getting 2nd row Info Bar
%get_device_sw%

:: Call this file to correct display text for Manufacturer name pulled from build.prop
%mfr_fix%

:: Call this file to correct display text for CPU name pulled from build.prop
%cpu_fix%

::---------------------------------------------------------------
:: Uncomment next line to test on UNROOTED status
::set rootstatus=Unrooted
::---------------------------------------------------------------

::---------------------------------------------------------------
:: Uncomment next line to test on ROOTED status
::set rootstatus=Rooted
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Fixes display problems on info bar when no device is connected

: Workaround for CM10.1 Superuser
if "%autosuver_cm10%"=="1" set suversion=CyanogenMod

if [%suversion%]==[] set suversion=N/A
::set suversion=N/A
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Replaced with top fix to check ADB access
:: Getting ADB Root Access
if not %rootstatus%==Unrooted %getadbroot%
if %rootstatus%==Unrooted %adbstart%
::---------------------------------------------------------------


:end2




