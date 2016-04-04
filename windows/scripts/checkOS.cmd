@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:main


:checkbits

if not exist "C:\Program Files (x86)" set bits=x86
if exist "C:\Program Files (x86)" set bits=x64

goto checkos


:checkos

ver | find "5.1"
if %errorlevel%==0 set ostype=xp

ver | find "6.0"
if %errorlevel%==0 set ostype=vista

ver | find "6.1"
if %errorlevel%==0 set ostype=win7

ver | find "6.2"
if %errorlevel%==0 set ostype=win8

ver | find "6.3"
if %errorlevel%==0 set ostype=win81



:end


