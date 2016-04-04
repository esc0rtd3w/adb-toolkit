@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set userinput=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
%cocolor% 0d
echo.
echo.
echo Your Device DOES NOT Appear To Have Root Privileges!
echo.
echo.
echo The features you are trying to access WILL NOT work properly.
echo.
echo.
echo.
echo 1) Take me to the Rooting and Exploitation Menu
echo.
echo 2) Continue without Superuser permissions
echo.

set /p userinput=


:: Reject any number higher than the highest menu item
if %userinput% gtr 2 goto reset

if %userinput%==1 goto opt1

if %userinput%==2 goto opt2



:opt1

call "scripts\rooting.cmd"

goto end


:opt2

goto end




:end


