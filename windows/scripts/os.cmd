@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:main


ver | find "Version 5.1" >nul
if %errorlevel%==0 set os=XP

ver | find "Version 6.0" >nul
if %errorlevel%==0 set os=VISTA

ver | find "Version 6.1" >nul
if %errorlevel%==0 set os=WIN7

ver | find "Version 6.2" >nul
if %errorlevel%==0 set os=WIN8



:: Set nice readable text for each one as a separate text variable

if %os%==XP set os_text=Windows XP
if %os%==VISTA set os_text=Windows Vista
if %os%==WIN7 set os_text=Windows 7
if %os%==WIN8 set os_text=Windows 8


:end


