@echo off


:top

color 0c

:: Run cleanup to prevent hanging that sometimes occurs during startup
::call "scripts\cleanup.cmd"

:: Check for 64-Bit Operating System
call "scripts\check64bit.cmd"
call "scripts\checkOS.cmd"


:: Checking for "noremove" file for old system32 dependencies
:: If it exists, the file check will be skipped
if exist "c:\adbtk\sys32.noremove" goto reset0

:: Checking a few old system32 dependencies to trigger removal if needed
if exist "%systemroot%\system32\AFPTool.exe" goto checkold
if exist "%systemroot%\system32\fart199b.exe" goto checkold
if exist "%systemroot%\system32\heimdall.exe" goto checkold
if exist "%systemroot%\system32\heimdall-frontend.exe" goto checkold
if exist "%systemroot%\system32\unrevoked3.exe" goto checkold
if exist "%systemroot%\system32\wincdemu.exe" goto checkold


:reset0


call "scripts\adb_mode_init.cmd"

::---------------------------------------------------------------
:: New Method (Added 20140711)
:: Shows warning ONLY if build.nightly DOES exist and build.release DOES NOT exist
:: DOES NOT show warning if build.release and build.nightly both exist
:: DOES NOT show warning if only build.release exists
:: DOES NOT show warning if build.nightly and build.release both DO NOT exist
if exist "bin\build.release" goto reset
if not exist "bin\build.nightly" goto reset
if exist "bin\build.test" goto reset
if exist "bin\build.nightly" goto nightly
if not exist "bin\build.release" goto reset

::---------------------------------------------------------------


::---------------------------------------------------------------
:: MessageBox Info for Nightly Builds Only
::---------------------------------------------------------------

:nightly

:: Get global variables before using msgbox
call "scripts\global.cmd"

title Android ADB Toolkit                                        -[ adbtoolkit.com ]-

color 0e
cls
echo Preparing To Launch ADB Toolkit....
echo.
echo.
echo Please read text and click OK on the MessageBox to continue!
echo.
echo.


%msgbox% "This is an unreleased version of ADB Toolkit, and being so may have bugs and some things may be missing or non-functional. There are drivers for nearly every manufacturer, as well as files required for rooting and many other things included. Files and folders will be added, removed, and/or modified throughout future builds and releases. Please refer to the /readme/ folder to find helpful text, 3rd party information, and more. Feel free to send comments and/or suggestions to esc0rtd3w@gmail.com" "THIS MESSAGE DOES NOT SHOW UP ON THE FINAL BUILD OF THIS RELEASE!" OK

goto reset


:: Return here to perform a menu reset

:reset


:: Call for Global Variables
call "scripts\global.cmd"

if %adbMode%==none set adbMode=usb


title Android ADB Toolkit                                        -[ adbtoolkit.com ]-

color 0c


:: Create Top Banner (to help hide read-only check)
%makebanner%


:: Check Read/Write Status
%check_readonly%


:: Setting size of main window
:: Old mode
::mode con lines=57

:: New mode FIXES scrolling issues
mode con cols=80


:: Fix for not showing copy progress at launch
%showbanner%
echo.
echo.


:: Get info from static infobar
call "scripts\get_info_bar.cmd"


:: Cleanup before launching main menu
::if exist "%dl_temp%\build_prop\ro.product.board" %run_cleanup%


:: Check for build.prop backup for attached device, specific by serial number, and create if not found
%build_prop_backup%


:: Create Top Banner (Again to display properly on menu)
%makebanner%


:: Get available web browsers
call "scripts\get_browsers.cmd"


:: Check dotNET Framework
call "scripts\dotNET.cmd"


:: Make default directories
if not exist "%dl_path%" md "%dl_path%"
if not exist "%dl_backups%" md "%dl_backups%"

if not exist "%dl_axml%" md "%dl_axml%"
if not exist "%dl_temp%" md "%dl_temp%"
if not exist "%db_temp%" md "%db_temp%"
if not exist "%dl_backups%" md "%dl_backups%"


::---------------------------------------------------------------
:: DEBUGGING ONLY!!!!
:: Uncomment next line to check Global Variables.
:: YOU MUST COMMENT FOR RELEASE BUILDS
::call "scripts\global_list.cmd"
::---------------------------------------------------------------

goto main


:checkold

call "scripts\cleanup\check_old_files.cmd"

goto top


:: Try and determine what device is connected before menu is shown


:main
:: New mode FIXES scrolling issues
mode con cols=80

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-

%showbanner%
echo.
echo.
%cocolor% 02
echo Select an Option or press U to update or M to change ADB Mode and Press ENTER:
%cocolor% 0e
echo.
%cocolor% 03
echo Z) Reboot Menu (Normal, Recovery, Download, and Bootloader Modes)
echo.
echo.
%cocolor% 0e
echo 1) Driver Installation (Install ADB and other drivers for your device)
echo.
echo 2) Device Info (Battery Stats, Wifi Info, View Logcat, Get Events, etc)
echo.
echo 3) Firmware Flashing (fastboot, Odin, RSDLite, QPST, BitPim, RKTools, etc)
echo.
echo 4) Rooting and Exploitation (Superuser, S-Off Tools, Busybox, etc)
echo.
echo 5) Recovery, Roms, and Google Apps (Recovery Images, Stock/Custom Roms, gapps)
echo.
echo 6) File Transfer (Backup/Restore, Install APK, Push/Pull Files, Download APK)
echo.
echo 7) Linux Shell (Command Line, Touch Events, Screenshot, Lockscreen Attacks)
echo.
echo 8) Utilities and Misc (APK Tools, MSL/SPC Tools, Linux ARM, Misc ADB, etc)
echo.
echo 9) Customization and Editors (Animations, Kitchen Tools, Customize Roms, etc)
echo.
echo 10) Game Specific Tools (Save Editing, Backup/Restore Game Saves, etc)
echo.
echo 11) Other Devices (Apple iOS, Microsoft WP, Nokia, Rim/Blackberry, etc)
echo.
echo 12) Credits, Donations, Website Links, and Documentation
echo.
::echo.
%cocolor% 0b
echo Q) Quit (Exit This Window)                                X) Reload Device Info
%cocolor% 0e
::echo.

set /p option=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %option%==Q goto end
if %option%==q goto end

:: Check X flag for restart of menu to display DEVICE properly from build.prop
if %option%==X goto reset
if %option%==x goto reset

:: Check Automatic Mode
if %option%==A goto automod
if %option%==a goto automod

:: Check ADB Mode
if %option%==M goto adbmode
if %option%==m goto adbmode

:: Check For Update Flag
if %option%==U goto update
if %option%==u goto update

:: Check For Update Flag
if %option%==Z goto rbtMode
if %option%==z goto rbtMode


:: Reject any number higher than the highest menu item
if %option% gtr 12 goto main


if %option%==1 call "scripts\driver_install.cmd"

if %option%==2 call "scripts\device_info.cmd"

if %option%==3 call "scripts\firmware_flashing.cmd"

if %option%==4 call "scripts\rooting.cmd"

if %option%==5 call "scripts\recovery_roms_gapps.cmd"

if %option%==6 call "scripts\file_transfer.cmd"

if %option%==7 call "scripts\shell.cmd"

if %option%==8 call "scripts\other_utils.cmd"

if %option%==9 call "scripts\customization.cmd"

if %option%==10 call "scripts\gaming_tools.cmd"

::if %option%==11 call "scripts\reboot.cmd"

if %option%==11 call "scripts\other_devices.cmd"

if %option%==12 call "scripts\credits.cmd"

goto reset



:adbmode

call "scripts\adb_mode.cmd"

goto reset


:automod

call "scripts\automod.cmd"

goto reset


:update

call "scripts\update.cmd"

goto reset

:rbtMode

call "scripts\reboot.cmd

goto reset


:end

%run_cleanup%
%adbstop%
%adbforcekill%

exit









