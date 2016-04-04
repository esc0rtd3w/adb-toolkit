@echo off

set isoFile=%~dp0\drivers.iso

setlocal enableDelayedExpansion
set "driveLetter=DEFGHIJKLMNOPQRSTUVWXYZ"
for /f "delims=:" %%a in ('wmic logicaldisk get caption') do set "driveLetter=!driveLetter:%%a=!"

::echo All available drive letters: %driveLetter%
::echo Next unused drive letter: %driveLetter:~0,1%
::echo Last unused letter: %driveLetter:~-1%

::pause


:: Check for already mounted drive letter
if exist "%temp%\adbtkDriveLetter.tmp" call "%~dp0\unmount_iso.cmd"

:: Create drive letter for auto mounting/unmounting
echo %driveLetter:~0,1%>"%temp%\adbtkDriveLetter.tmp"

%showbanner%
set driveLetter=%driveLetter:~0,1%


goto start


:start
%showbanner%
echo Stopping Virtual Disc Services....
echo.
echo.

net stop imdsksvc

%showbanner%
echo Stopping Virtual Disc Services....
echo.
echo.

net stop awealloc

%showbanner%
echo Stopping Virtual Disc Services....
echo.
echo.

net stop imdisk

%showbanner%
echo Removing Virtual Disc Services....
echo.
echo.

::start rundll32.exe setupapi.dll,InstallHinfSection DefaultUninstall 132 %SystemRoot%\inf\imdisk.inf


%showbanner%
echo Adding Virtual Disc Services....
echo.
echo.

rundll32 setupapi.dll,InstallHinfSection DefaultInstall 132 %~dp0\mount\imdisk.inf



%showbanner%
echo Starting Virtual Disc Services....
echo.
echo.

net start imdsksvc



%showbanner%
echo Starting Virtual Disc Services....
echo.
echo.

net start awealloc



%showbanner%
echo Starting Virtual Disc Services....
echo.
echo.

net start imdisk


%showbanner%
echo Starting Virtual Disc Services....
echo.
echo.


%showbanner%
echo Mounting ISO....
echo.
echo.

%~dp0mount\imdisk.exe -a -f %isoFile% -m %driveLetter%:

if %mountMode%==auto goto mount_a
if %mountMode%==manual goto mount_m

goto end



:mount_a
%showbanner%
echo Installing Drivers....
echo.
echo.


"%~dp0mount\dpinst-%bits%.exe" /lm /q /sa /path %driveLetter%:\

call "%~dp0unmount_iso.cmd"

goto end


:mount_m
%showbanner%
echo Launching Device Manager....
echo.
echo.

if %ostype%==xp start /d "%windir%\system32" devmgmt.msc

if %ostype%==vista "%windir%\system32\hdwwiz.cpl"
if %ostype%==win7 "%windir%\system32\hdwwiz.cpl"
if %ostype%==win8 "%windir%\system32\hdwwiz.cpl"
if %ostype%==win81 "%windir%\system32\hdwwiz.cpl"

goto end


:end

