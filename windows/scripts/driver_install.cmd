@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set method=99

::call "scripts\get_info_bar.cmd"


set mountMode=0

:main
%showbanner%
echo.
echo.
echo Select Driver Install Method and press ENTER:
echo.
echo.
echo 1) Auto-Mount CD Image and Automatically Install Drivers
echo.
echo 2) Auto-Mount CD Image and Manually Install Drivers
echo.
echo 3) Unmount CD Image (Use when drivers have been installed)
echo.
echo 4) Manual Mount CD Image Using Portable WinCDEmu
echo.
echo 5) Extract to "bin" folder (Estimated Time: 5 to 15 Minutes)
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p method=

:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %method%==R goto end
if %method%==r goto end

if %method% gtr 4 goto main

if %method%==1 goto mounta
if %method%==2 goto mountm
if %method%==3 goto autoumount
if %method%==4 goto virtual
if %method%==5 goto extract

goto end


:mounta

%showbanner%

set mountMode=auto
call "bin\drivers\mount_iso.cmd"


goto end


:mountm

%showbanner%

set mountMode=manual
call "bin\drivers\mount_iso.cmd"


goto end


:autoumount

%showbanner%

call "bin\drivers\unmount_iso.cmd"


goto end


:virtual
%showbanner%
echo.
echo.
echo Preparing To Launch Portable WinCDEmu....
echo.
echo.
echo Please read text and click OK on the MessageBox to continue!
echo.
echo.
echo.

%msgbox% "This will launch Portable WinCDEmu and the Device Manager. If you are prompted for driver installation, click YES and proceed. Once opened click on the MOUNT ANOTHER IMAGE button. Select the adbtk-drivers.iso file from DOCUMENTS\ folder or ADBTOOLKIT_FOLDER\BIN\DRIVERS\ folder and click OK. Once the CD Image has been mounted, you can scan the Virtual Disc for drivers from the Device Manager. The Device Manager will be automatically opened after clicking OK. Find your device (yellow triangle) and double-click it. Click on UPDATE DRIVER and then select BROWSE MY COMPUTER. Select the drive letter of the mounted CD Image and click NEXT. Automatic Search may also work." "Mount Virtual CD Image" OK


%showbanner%
echo.
echo.
echo Verifying "adbtk-drivers.iso" in the current users Documents folder....
echo.
echo.

copy /y "bin\drivers\drivers.iso" "%userprofile%\documents\adbtk-drivers.iso"


%showbanner%
echo.
echo.
echo Loading Device Manager and Portable WinCDEmu....
echo.
echo.


start mmc devmgmt.msc

%wait% 4

%msgbox% "Click on MOUNT ANOTHER IMAGE and select ADBTK-DRIVERS.ISO once WinCDEmu is opened." "ADB Toolkit" OK

start "%wincdemupath%" "%wincdemu%"

goto end


:extract
%showbanner%
echo.
echo.
echo Preparing To Extract Drivers....
echo.
echo.
echo This process may take 15 minutes or longer.
echo.
echo.
echo If running from read-only media, the path is "c:\adbtk\bin\drivers\".
echo.
echo If running from writeable media, the path is "CURRENT_FOLDER\bin\drivers\".
echo.
echo.
echo.
echo Press any key when ready....
echo.

pause>nul

:: If readonly flag is 0 write to current_path\, if set to 1 write to c:\adbtk\

::if %readonly%==0 rar x -y "bin\drivers\drivers.rar" "bin\drivers\"

::if %readonly%==1 rar x -y "bin\drivers\drivers.rar" "c:\adbtk\bin\drivers\"

if %readonly%==0 %sevenz% x -y -o"bin\drivers\" "bin\drivers\drivers.iso"

if %readonly%==1 %sevenz% x -y -o"c:\adbtk\bin\drivers\" "bin\drivers\drivers.iso"

start mmc devmgmt.msc

if %readonly%==0 explorer "%cd%\bin\drivers\"

if %readonly%==1 explorer "c:\adbtk\bin\drivers\"

goto end


:: Install drivers using devcon (pulled from Kindle Fire Utility)
::del %userprofile%\.android\adb_usb.ini

:: Performs the check to see if .android exists, and then make sure adb_usb.ini is setup right
::if not EXIST "%userprofile%\.android\" ( mkdir "%userprofile%\.android\" )
::if not EXIST "%userprofile%\.android\adb_usb.ini" ( copy drivers\adb_usb.ini "%userprofile%\.android\adb_usb.ini" )

::devcon update drivers\android_winusb.inf "USB\VID_1949&PID_0006&REV_0216" > nul
::if %errorlevel% == 2 ( drivers\x64\devcon update drivers\android_winusb.inf "USB\VID_1949&PID_0006&REV_0216" > nul )

::if %errorlevel% == 2 ( drivers\x86\devcon update drivers\android_winusb.inf "USB\VID_1949&PID_0006&REV_0216&MI_01" > nul )
::if %errorlevel% == 2 ( drivers\x64\devcon update drivers\android_winusb.inf "USB\VID_1949&PID_0006&REV_0216&MI_01" > nul )

::if %errorlevel% == 2 ( drivers\x86\devcon update drivers\android_winusb.inf "USB\VID_18D1&PID_0100" > nul )
::if %errorlevel% == 2 ( drivers\x64\devcon update drivers\android_winusb.inf "USB\VID_18D1&PID_0100" > nul )

::if %errorlevel% == 2 ( drivers\x86\devcon update drivers\android_winusb.inf "USB\VID_18D1&PID_0100&MI_01" > nul )
::if %errorlevel% == 2 ( drivers\x64\devcon update drivers\android_winusb.inf "USB\VID_18D1&PID_0100&MI_01" > nul )

::%adb% start-server


:: Install Drivers Win7
::pnputil -i -a drivers\android_winusb.inf

:: Install Drivers XP
::devcon install drivers\android_winusb.inf "USB\VID_18D1&PID_4E40"

:: Remove Drivers
::devcon remove "USB\VID_18D1&PID_4E40"




:end




