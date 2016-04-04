@echo off



cls
echo Unmounting %isoName% ISO....
echo.
echo.

imdisk.exe -D -m Z:


cls
echo Unmounting %isoName% ISO....
echo.
echo.



cls
echo Stopping Virtual Disc Services....
echo.
echo.

net stop imdsksvc


cls
echo Stopping Virtual Disc Services....
echo.
echo.

net stop awealloc


cls
echo Stopping Virtual Disc Services....
echo.
echo.

net stop imdisk


cls
echo Removing Virtual Disc Services....
echo.
echo.

start rundll32.exe setupapi.dll,InstallHinfSection DefaultUninstall 132 %SystemRoot%\inf\imdisk.inf


cls
echo Removing Virtual Disc Services....
echo.
echo.
