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
%cocolor% 0a
echo Current Exploit: %m_exploit%
%cocolor% 0e
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Launch Step-By-Step Build and Execute Menu
echo.
echo 2) Choose Exploit
echo.
echo 3) Choose SU binary for /bin and /xbin
echo.
echo 4) Choose BUSYBOX binary for /bin or /xbin
echo.
echo 5) Choose SQL binary for /bin or /xbin
echo.
echo 6) Choose CUSTOM binary for /bin or /xbin
echo.
echo 7) Open Exploitation Menu For Scripting and Issuing Commands
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
if %action% gtr 7 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

if %action%==7 goto opt7


goto reset

:opt1

call "scripts\rooting\manual\step-by-step.cmd"

goto reset


:opt2

call "scripts\rooting\manual\exploits.cmd"

goto reset


:opt3

call "scripts\rooting\manual\superuser.cmd"

goto reset


:opt4

call "scripts\rooting\manual\busybox.cmd"

goto reset


:opt5

call "scripts\rooting\manual\sqlite.cmd"

goto reset


:opt6

call "scripts\rooting\manual\custom.cmd"

goto reset


:opt7

call "scripts\rooting\manual\scripting.cmd"

goto reset


:end


