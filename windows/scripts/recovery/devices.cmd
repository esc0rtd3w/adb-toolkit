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

::if %action%==1 call "bin\recovery\images\custom\acer.cmd"

::if %action%==2 call "bin\recovery\images\custom\amazon.cmd"

::if %action%==3 call "bin\recovery\images\custom\asus.cmd"

::if %action%==4 call "bin\recovery\images\custom\dell.cmd"

::if %action%==5 call "bin\recovery\images\custom\foxconn.cmd"

::if %action%==6 call "bin\recovery\images\custom\google.cmd"

::if %action%==7 call "bin\recovery\images\custom\hisense.cmd"

::if %action%==8 call "bin\recovery\images\custom\hp.cmd"

::if %action%==9 call "bin\recovery\images\custom\htc.cmd"

::if %action%==10 call "bin\recovery\images\custom\kyocera.cmd"

::if %action%==11 call "bin\recovery\images\custom\lg.cmd"

::if %action%==12 call "bin\recovery\images\custom\motorola.cmd"




:: Temp fix until code is added

if %action%==1 start %browser% "%dl_server%/recovery/images/stock/acer/"

if %action%==2 start %browser% "%dl_server%/recovery/images/stock/amazon/"

if %action%==3 start %browser% "%dl_server%/recovery/images/stock/asus/"

if %action%==4 start %browser% "%dl_server%/recovery/images/stock/dell/"

if %action%==5 start %browser% "%dl_server%/recovery/images/stock/foxconn/"

if %action%==6 start %browser% "%dl_server%/recovery/images/stock/google/"

if %action%==7 start %browser% "%dl_server%/recovery/images/stock/hisense/"

if %action%==8 start %browser% "%dl_server%/recovery/images/stock/hp/"

if %action%==9 start %browser% "%dl_server%/recovery/images/stock/htc/"

if %action%==10 start %browser% "%dl_server%/recovery/images/stock/kyocera/"

if %action%==11 start %browser% "%dl_server%/recovery/images/stock/lg/"

if %action%==12 start %browser% "%dl_server%/recovery/images/stock/motorola/"


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



::if %action%==13 call "bin\recovery\images\custom\pegatron.cmd"

::if %action%==14 call "bin\recovery\images\custom\samsung.cmd"

::if %action%==15 call "bin\recovery\images\custom\sony.cmd"

::if %action%==16 call "bin\recovery\images\custom\teleepoch.cmd"

::if %action%==17 call "bin\recovery\images\custom\zte.cmd"





:: Temp fix until code is added


if %action%==13 start %browser% "%dl_server%/recovery/images/stock/pegatron/"

if %action%==14 start %browser% "%dl_server%/recovery/images/stock/samsung/"

if %action%==15 start %browser% "%dl_server%/recovery/images/stock/sony/"

if %action%==16 start %browser% "%dl_server%/recovery/images/stock/teleepoch/"

if %action%==17 start %browser% "%dl_server%/recovery/images/stock/zte/"


::set pagetwo=1


goto main2


:end




