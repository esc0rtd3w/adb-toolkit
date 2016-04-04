@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-




:main

set minipwpath=bin\apps\windows

set rarfile=minipw.rar
set rartext=Mini Partition Wizard

%showbanner%
echo.
echo.
echo Extracting %rartext% to a temporary folder....
echo.
echo.
echo.


rar x -y "%minipwpath%\%rarfile%" "%temp%"


start "%temp%" "%temp%\minipw\PartitionWizard.exe"


:end


