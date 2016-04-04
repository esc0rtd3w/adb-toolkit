@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:: Not Currently Working Re-Direct
call "scripts\unavailable.cmd"
goto end

:main
set imgfile=99
%showbanner%
echo.
echo.
echo Drag a valid yaffs2 .img file into this window and press ENTER:
echo.
echo.
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.
echo.
set /p imgfile=
echo.

:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %imgfile%==R goto end
if %imgfile%==r goto end

:: Reject any number higher than the highest menu item
if %imgfile% gtr 0 goto main

goto doextract


:doextract
%showbanner%
echo.
echo.
echo Extracting %imgfile%....
echo.
echo.
echo.

if not exist "%dl_path%\extracted_yaffs2" md "%dl_path%\extracted_yaffs2"

copy /y "%unyaffs%" "%dl_path%\extracted_yaffs2\unyaffs.exe"

"%dl_path%\extracted_yaffs2\unyaffs.exe" %imgfile%

del /q /f "%dl_path%\extracted_yaffs2\unyaffs.exe"

explorer "%dl_path%\extracted_yaffs2"

goto main



:end


