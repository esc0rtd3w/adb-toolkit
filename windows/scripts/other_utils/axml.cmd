@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

set axmlfile=r

:: Setting default remote path
set remote_path=BLANK

:: Setting Default Filename
set dl_filename=BLANK

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Drag an AXML File into this window and Press ENTER:
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p axmlfile=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %axmlfile%==R goto end
if %axmlfile%==r goto end


:: Reject any number higher than the highest menu item
::if %axmlfile% gtr 0 goto reset


if not exist "%dl_axml%" md "%dl_axml%"

if exist "%dl_axml%\outfile.xml" del /q /f "%dl_axml%\outfile.xml"

%javajar% %axml% "%axmlfile%" "%dl_axml%\outfile.xml" > "%dl_axml%\outfile.xml"

start notepad "%dl_axml%\outfile.xml"

goto reset


:end


