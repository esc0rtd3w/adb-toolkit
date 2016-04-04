@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

:set_var
set rebootflag=99

::call "scripts\get_info_bar.cmd"




:main
%showbanner%
echo.
echo.
echo Select Reboot Type and Press ENTER:
echo.
echo.
echo 1) Normal Reboot (Return To Homescreen)
echo.
echo 2) Recovery Reboot (Return To Clockworkmod or Other Recovery)
echo.
echo 3) Bootloader Reboot (HTC Devices, maybe others)
echo.
echo 4) Bootloader Reboot Alternate (HTC Devices, maybe others)
echo.
echo 5) Download Mode (Samsung Devices, maybe others)
echo.
echo 6) Power Down Device (Using "poweroff" in /system/xbin/)
echo.
echo 7) Reboot Out of Bootloader [FASTBOOT MODE ONLY]
echo.
echo 8) HBoot Mode [FASTBOOT MODE ONLY]
echo.
echo 9) Power Down Device [FASTBOOT MODE ONLY]
echo.
echo 10) NV Backup Reboot (IMEI Backup, Samsung Devices, maybe others)
echo.
echo 11) NV Restore Reboot (IMEI Restore, Samsung Devices, maybe others)
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p rebootflag=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %rebootflag%==R goto end
if %rebootflag%==r goto end


if %rebootflag% gtr 11 goto reset

goto execute



:execute
%showbanner%
echo.
echo.
echo Preparing to perform a power operation on device....
echo.
echo.
echo Press CTRL+C to CANCEL!
echo.
echo.
echo.

%wait% 5


if %rebootflag%==1 goto ex1
if %rebootflag%==2 goto ex2
if %rebootflag%==3 goto ex3
if %rebootflag%==4 goto ex4
if %rebootflag%==5 goto ex5
if %rebootflag%==6 goto ex6
if %rebootflag%==7 goto ex7
if %rebootflag%==8 goto ex8
if %rebootflag%==9 goto ex9
if %rebootflag%==10 goto ex10
if %rebootflag%==11 goto ex11


:ex1
%showbanner%
echo.
echo.
echo Reboot Mode: Normal
::pause
%adb% reboot
goto reset


:ex2
%showbanner%
echo.
echo.
echo Reboot Mode: Recovery
::pause
%adb% reboot recovery
goto reset


:ex3
%showbanner%
echo.
echo.
echo Reboot Mode: Bootloader
::pause
%adb% reboot bootloader
goto reset


:ex4
%showbanner%
echo.
echo.
echo Reboot Mode: Bootloader Alternate
::pause
%adb% reboot-bootloader
goto reset


:ex5
%showbanner%
echo.
echo.
echo Reboot Mode: Download
::pause
%adb% reboot download
goto reset


:ex6
%showbanner%
echo.
echo.
echo Reboot Mode: Power Down
::pause
%adb% shell powerdown
goto reset


:ex7
%showbanner%
echo.
echo.
echo Reboot Mode: Return From Bootloader [Fastboot]
::pause
%fastboot% reboot
goto reset


:ex8
%showbanner%
echo.
echo.
echo Reboot Mode: HBoot Mode [Fastboot]
::pause
%fastboot% oem gotohboot
goto reset


:ex9
%showbanner%
echo.
echo.
echo Reboot Mode: Power Down [Fastboot]
::pause
%fastboot% oem powerdown
goto reset


:ex10
%showbanner%
echo.
echo.
echo Reboot Mode: NV Backup
::pause
%adb% reboot nvbackup
goto reset


:ex11
set cancelflag=c
%showbanner%
echo.
echo.
echo Reboot Mode: NV Restore
echo.
echo.
echo YOU MUST ALREADY HAVE A BACKUP DONE WITH "NVBACKUP"!!!
echo.
echo IF YOU DO NOT HAVE A BACKUP THEN DO NOT CONTINUE!!!
echo.
echo.
echo PRESS "C" TO CANCEL AND RETURN TO THE PREVIOUS MENU!
echo.
echo.
echo TYPE "CONTINUE" IN ALL CAPS TO CONTINUE....
echo.

set /p cancelflag=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %cancelflag%==C goto reset
if %cancelflag%==c goto reset

if %cancelflag%==CONTINUE goto ex11a

if %cancelflag% gtr 0 goto ex11

goto reset


:ex11a
::echo EX11a
::pause
%adb% reboot nvrestore
goto reset



:end





