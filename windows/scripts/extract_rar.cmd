@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:main
%showbanner%
echo.
echo.
echo Extracting %rartext% to a temporary folder....
echo.
echo.
echo.

md "%temp%\adbtk"
%rar% x -y "%currentpath%\%rarfile%" "%temp%\adbtk"

start "%temp%\adbtk" "%temp%\adbtk\%rartext%\%launchfile%"




:end


