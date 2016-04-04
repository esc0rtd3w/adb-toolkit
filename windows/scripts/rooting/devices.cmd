@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set deviceroot=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a manufacturer and Press ENTER:
echo.
echo.
echo 1) Acer
echo.
echo 2) Amazon
echo.
echo 3) Asus
echo.
echo 4) Dell
echo.
echo 5) Foxconn
echo.
echo 6) Google
echo.
echo 7) HiSense
echo.
echo 8) HP
echo.
echo 9) HTC
echo.
echo 10) Kyocera
echo.
echo 11) LG
echo.
echo 12) Motorola
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p deviceroot=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %deviceroot%==R goto end
if %deviceroot%==r goto end

:: Check Next Page flag
if %deviceroot%==N goto main2
if %deviceroot%==n goto main2


:: Reject any number higher than the highest menu item
if %deviceroot% gtr 12 goto reset



:: Temp fix until code is added

if %deviceroot%==1 explorer.exe "bin\rooting\devices\acer\"

if %deviceroot%==2 explorer.exe "bin\rooting\devices\amazon\"

if %deviceroot%==3 explorer.exe "bin\rooting\devices\asus\"

if %deviceroot%==4 explorer.exe "bin\rooting\devices\dell\"

if %deviceroot%==5 explorer.exe "bin\rooting\devices\foxconn\"

if %deviceroot%==6 explorer.exe "bin\rooting\devices\google\"

if %deviceroot%==7 explorer.exe "bin\rooting\devices\hisense\"

if %deviceroot%==8 explorer.exe "bin\rooting\devices\hp\"

if %deviceroot%==9 explorer.exe "bin\rooting\devices\htc\"
if %deviceroot%==9 call "scripts\rooting\htc.cmd"


if %deviceroot%==10 explorer.exe "bin\rooting\devices\kyocera\"

if %deviceroot%==11 explorer.exe "bin\rooting\devices\lg\"

if %deviceroot%==12 explorer.exe "bin\rooting\devices\motorola\"


goto reset



:main2
set deviceroot=99
%showbanner%
echo.
echo.
echo Select a manufacturer and Press ENTER:
echo.
echo.
echo 13) Pegatron
echo.
echo 14) Samsung
echo.
echo 15) Sony
echo.
echo 16) Teleepoch
echo.
echo 17) ZTE
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p deviceroot=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %deviceroot%==R goto main
if %deviceroot%==r goto main

:: Reject any number lower than the lowest menu item
if %deviceroot% lss 13 goto main2

:: Reject any number higher than the highest menu item
if %deviceroot% gtr 17 goto main2




:: Temp fix until code is added


if %deviceroot%==13 explorer.exe "bin\rooting\devices\pegatron\"

if %deviceroot%==14 explorer.exe "bin\rooting\devices\samsung\"

if %deviceroot%==15 explorer.exe "bin\rooting\devices\sony\"

if %deviceroot%==16 explorer.exe "bin\rooting\devices\teleepoch\"

if %deviceroot%==17 explorer.exe "bin\rooting\devices\zte\"
if %deviceroot%==17 call "scripts\rooting\zte.cmd"


goto main2


:end




