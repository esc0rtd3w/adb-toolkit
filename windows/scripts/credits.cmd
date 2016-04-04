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
echo Select an ACTION from below and Press ENTER:
echo.
echo.
%cocolor% 0a
echo 1) DONATE TO THE ADB TOOLKIT PROJECT
%cocolor% 0e
echo.
echo 2) adbtoolkit.com
::echo.
::echo 3) ADB Toolkit (XDA Post)
::echo.
::echo 4) XDA Developers Forum (Main Page)
echo.
echo 3) 3rd Party Links
echo.
echo 4) All Other Links
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
if %action% gtr 4 goto reset

if %action%==1 start %iepath% "https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=UG5QAACXSB6MY"

if %action%==2 start %iepath% "http://adbtoolkit.com"

::if %action%==3 start %iepath% "http://forum.xda-developers.com/showthread.php?t=1800335"

::if %action%==3 start %iepath% "http://forum.xda-developers.com"

if %action%==3 call "scripts\credits\3rdparty.cmd"

if %action%==4 call "scripts\credits\other.cmd"




goto reset


:end


