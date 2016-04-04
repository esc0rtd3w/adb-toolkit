@echo off

set isoFile=%~dp0\drivers.iso

%showbanner%

set /p driveLetter=<"%temp%\adbtkDriveLetter.tmp"

::echo %driveLetter%
::pause

%showbanner%
echo Unmounting %isoName% ISO....
echo.
echo.

imdisk.exe -D -m %driveLetter%:


%showbanner%
echo Unmounting %isoName% ISO....
echo.
echo.



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

start rundll32.exe setupapi.dll,InstallHinfSection DefaultUninstall 132 %SystemRoot%\inf\imdisk.inf


%showbanner%
echo Removing Virtual Disc Services....
echo.
echo.

del /s /q /f "%temp%\adbtkDriveLetter.tmp"


%showbanner%
echo Removing Temporary Drive Letter....
echo.
echo.
