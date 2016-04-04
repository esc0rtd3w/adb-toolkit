@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
%cocolor% 0d
echo Detected Android Version: %device_sw_name% %ro_build_version_release%
%cocolor% 0e
echo.
echo.
echo Choose your Android Version from below and Press ENTER:
echo.
echo.
echo 1) Astro/Bender/Cupcake/Honeycomb (1.0/1.1/1.5/3.x)
echo.
echo 2) Donut (1.6)
echo.
echo 3) Eclair (2.0 - 2.1)
echo.
echo 4) Froyo (2.2.x)
echo.
echo 5) Gingerbread (2.3.x)
echo.
echo 6) Ice Cream Sandwich (4.0.x)
echo.
echo 7) Jellybean (4.1.x - 4.3.x)
echo.
echo 8) KitKat (4.4.x)
echo.
echo 9) Lollipop (5.x.x)
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
if %action% gtr 9 goto reset

if %action%==1 call "scripts\custom_roms\gapps\astro-bender-cupcake-honeycomb.cmd"

if %action%==2 call "scripts\custom_roms\gapps\donut.cmd"

if %action%==3 call "scripts\custom_roms\gapps\eclair.cmd"

if %action%==4 call "scripts\custom_roms\gapps\froyo.cmd"

if %action%==5 call "scripts\custom_roms\gapps\gingerbread.cmd"

if %action%==6 call "scripts\custom_roms\gapps\icecreamsandwich.cmd"

if %action%==7 call "scripts\custom_roms\gapps\jellybean.cmd"

if %action%==8 call "scripts\custom_roms\gapps\kitkat.cmd"

if %action%==8 call "scripts\custom_roms\gapps\lollipop.cmd"


goto reset


:end


