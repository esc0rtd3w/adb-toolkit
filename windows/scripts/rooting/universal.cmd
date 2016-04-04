@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

set currentver=99
set launchfile=none
set currentpath=bin\rooting\devices\multi
set rarfile=none
set rartext=none
::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) SuperOneClick
echo.
echo 2) APK Install Rooting Files (z4Root, Androot, Gingerbreak, TowelRoot, etc) 
echo.
echo 3) Original OneClick (Rage Against The Cage)
echo.
echo 4) DooMLoRD (v1 Xperia 2011 ICS ROOT)
echo.
echo 5) DooMLoRD (Zergrush)
echo.
echo 6) DebugFS Root
echo.
echo 7) Motorola OneClick Root, Petes Motorola Support Tools, etc
echo.
echo 8) KMS, ShabbyMod, Captivate 1-Click, etc (Samsung Devices, possibly others) 
echo.
echo 9) Universal_qRoot_Rena3 (Renesas Rena3 Devices Only)
echo.
echo 10) UnlockRoot
echo.
echo 11) Other OneClick Tools
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
if %action% gtr 11 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

if %action%==7 goto opt7

if %action%==8 goto opt8

if %action%==9 goto opt9

if %action%==10 goto opt10

if %action%==11 goto opt11


goto reset



:opt1

call "scripts\rooting\superoneclick.cmd"

goto reset


:opt2

call "scripts\rooting\apkrooting.cmd"

goto reset


:opt3
%showbanner%
echo.
echo.
set launchfile=run.bat
set currentpath=bin\rooting\devices\multi
set rarfile=one-click-root.rar
set rartext=one-click-root

%extract_rar%

goto reset

:: old code next 2 lines
::"bin\rooting\devices\multi\one-click-root\run.bat"
::goto reset


:opt4
%showbanner%
echo.
echo.
set launchfile=runme.bat
set currentpath=bin\rooting\devices\multi\DooMLoRD
set rarfile=DooMLoRD_v1_Xperia-2011-ICS-ROOT.rar
set rartext=DooMLoRD_v1_Xperia-2011-ICS-ROOT

%extract_rar%

goto reset


:opt5
%showbanner%
echo.
echo.
set launchfile=runme.bat
set currentpath=bin\rooting\devices\multi\DooMLoRD
set rarfile=DooMLoRD_v4_ROOT.rar
set rartext=DooMLoRD_v4_ROOT

%extract_rar%

goto reset


:opt6
%showbanner%
echo.
echo.
set launchfile=RootDebugfs.bat
set currentpath=bin\rooting\devices\multi\DebugfsRoot
set rarfile=DebugfsRoot_Generic.rar
set rartext=DebugfsRoot_Generic

%extract_rar%

goto reset


:opt7

call "scripts\rooting\universal-moto.cmd"

goto reset


:opt8

call "scripts\rooting\universal-samsung.cmd"

goto reset



:opt9

:: Check for compatible device
if not %ro_product_manufacturer_text%==Renesas %nocompat_leave%
if not %ro_product_manufacturer_text%==Renesas goto reset

%showbanner%
echo.
echo.
%cocolor% 0d
echo Preparing device for root!
echo.
echo.
echo Copying needed files to /sdcard/....
%cocolor% 0e
echo.
echo.

set rena3rootpath=bin\rooting\devices\rockchip\Universal_qRoot_Rena3

:: Copying files to SD Card

%adb% push %rena3rootpath%\qroot /sdcard/qroot
%adb% push %rena3rootpath%\cramfs4 /sdcard/cramfs4
%adb% push %rena3rootpath%\ff4 /sdcard/ff4
%adb% push %rena3rootpath%\install.sh /sdcard/install.sh
%adb% push %rena3rootpath%\sdboot.bin /sdcard/sdboot.bin
%adb% push %rena3rootpath%\uboot-sd.bin /sdcard/uboot-sd.bin
%adb% push %rena3rootpath%\uImage4 /sdcard/uImage4


goto rena3ok


:rena3fail
%showbanner%
echo.
echo.
echo THe files did not transfer properly!
echo.
echo.
echo Do you want to try again? [Y/N]
echo.
echo.

set retry=y
set /p retry=

if %retry%==Y goto opt9
if %retry%==y goto opt9

if %retry%==N goto reset
if %retry%==n goto reset

goto reset


:rena3ok
%showbanner%
echo.
echo.
echo All files transferred successfully!
echo.
echo.
echo Turn off the device and press a key to continue....
echo.
pause>nul


%showbanner%
echo.
echo.
echo Turn on, hold VOL + POWER.
echo.
echo Wait until the message "Well done. Root complete."
echo.
echo.
echo Press any key to return to previous menu....
echo.
pause>nul

goto reset


:opt10

%showbanner%
echo.
echo.
set launchfile=unlockroot.exe
set currentpath=bin\rooting\devices\multi\unlockroot
set rarfile=unlockroot-3.1.0.0.rar
set rartext=unlockroot-3.1.0.0

%extract_rar%

goto reset


:opt11

::call "scripts\rooting\universal-1click.cmd"
call "scripts\unavailable.cmd"

goto reset




:end


