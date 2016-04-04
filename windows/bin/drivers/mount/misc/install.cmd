@echo off

:: Modified for use with ADB Toolkit!

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
echo Adding Virtual Disc Services....
echo.
echo.

rundll32 setupapi.dll,InstallHinfSection DefaultInstall 132 .\imdisk.inf


cls
echo Starting Virtual Disc Services....
echo.
echo.

net start imdsksvc



cls
echo Starting Virtual Disc Services....
echo.
echo.

net start awealloc



cls
echo Starting Virtual Disc Services....
echo.
echo.

net start imdisk


cls
echo Starting Virtual Disc Services....
echo.
echo.
