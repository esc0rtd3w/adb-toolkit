@echo off

title Android ADB Toolkit                                        -[ adbtoolkit.com ]-



:main

::---------------------------------------------------------------
:: Read-Only Flag. Used for driver extraction path change and others.

:: Test write privileges

:: Old write method
::copy "bin\test.write" "%cd%"

:: New write method 20120901
::echo. > "bin\test.write"
copy /y "bin\adbtk.ico" "%cd%"

if %errorlevel%==0 set readonly=0
if %errorlevel%==1 set readonly=1

:: Remove test write file if read-only flag is set to 0
if %readonly%==0 del /q /f "%cd%\adbtk.ico"
::---------------------------------------------------------------


:end


