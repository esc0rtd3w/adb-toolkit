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

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto end
if %action%==r goto end

:: Check Next Page flag
if %action%==N goto main2
if %action%==n goto main2


:: Reject any number higher than the highest menu item
if %action% gtr 12 goto reset




:: Temp fix until code is added

if %action%==1 explorer.exe "bin\recovery\custom\acer\"

if %action%==2 explorer.exe "bin\recovery\custom\amazon\"

if %action%==3 explorer.exe "bin\recovery\custom\asus\"

if %action%==4 explorer.exe "bin\recovery\custom\dell\"

if %action%==5 explorer.exe "bin\recovery\custom\foxconn\"

if %action%==6 explorer.exe "bin\recovery\custom\google\"

if %action%==7 explorer.exe "bin\recovery\custom\hisense\"

if %action%==8 explorer.exe "bin\recovery\custom\hp\"

if %action%==9 explorer.exe "bin\recovery\custom\htc\"

if %action%==10 explorer.exe "bin\recovery\custom\kyocera\"

if %action%==11 explorer.exe "bin\recovery\custom\lg\"

if %action%==12 explorer.exe "bin\recovery\custom\motorola\"


goto reset



:main2
set action=99
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

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto main
if %action%==r goto main

:: Reject any number lower than the lowest menu item
if %action% lss 13 goto main2

:: Reject any number higher than the highest menu item
if %action% gtr 17 goto main2




:: Temp fix until code is added


if %action%==13 explorer.exe "bin\recovery\custom\pegatron\"

if %action%==14 explorer.exe "bin\recovery\custom\samsung\"

if %action%==15 explorer.exe "bin\recovery\custom\sony\"

if %action%==16 explorer.exe "bin\recovery\custom\teleepoch\"

if %action%==17 explorer.exe "bin\recovery\custom\zte\"



goto main2


:end




