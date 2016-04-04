@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:main

:: Generic Check for 64-bit. Fix later with another architecture check.
set x64=0
set architecture=0

if exist "C:\Program Files (x86)" set x64=1


if %x64%==0 set architecture=32-Bit (x86)
if %x64%==1 set architecture=64-Bit (x64)



:end


