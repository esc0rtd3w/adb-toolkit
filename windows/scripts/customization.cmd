@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

:set_var
set action=99

:: Setting default download path
set dl_path=c:\adbtk

:: Setting default remote path
set remote_path=BLANK

:: Setting Default Filename
set dl_filename=BLANK

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Kitchen Tools (Rom Cooking Tools, CYGWIN, Other Tools)
echo.
echo 2) Splash Screen Tools (Static image shown at boot)
echo.
echo 3) Animation Tools (Animated images during OS booting and shutdown)
echo.
echo 4) Extract a ROM Image
echo.
echo 5) Build a ROM Image
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto end
if %action%==r goto end


:: Reject any number higher than the highest menu item
if %action% gtr 5 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

goto reset


:opt1

if %option%==10 call "scripts\kitchen.cmd"

goto reset


:opt2

if %option%==10 call "scripts\customization\splash.cmd"

goto reset


:opt3

if %option%==10 call "scripts\customization\animations.cmd"

goto reset


:opt4

if %option%==10 call "scripts\customization\rom_extract.cmd"

goto reset


:opt5

if %option%==10 call "scripts\customization\rom_build.cmd"

goto reset


:end


