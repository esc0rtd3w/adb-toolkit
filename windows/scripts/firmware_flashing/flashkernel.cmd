@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

set dl_path=c:\adbtk\flashing\MobileOdin\FlashKernels

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a FlashKernel to download and Press ENTER:
echo.
echo.
echo 1) MobileODIN_FlashKernel_D710-v1.0
echo.
echo 2) MobileODIN_FlashKernel_I535-v2.0
echo.
echo 3) MobileODIN_FlashKernel_I747-v2.0
echo.
echo 4) MobileODIN_FlashKernel_I777-v1.0
echo.
echo 5) MobileODIN_FlashKernel_I896-v1.0
echo.
echo 6) MobileODIN_FlashKernel_I5500-v1.0
echo.
echo 7) MobileODIN_FlashKernel_I9000B-v1.0
echo.
echo 8) MobileODIN_FlashKernel_I9000M-v1.0
echo.
echo 9) MobileODIN_FlashKernel_I9000-v1.0
echo.
echo 10) MobileODIN_FlashKernel_I9000-v2.0
echo.
echo 11) MobileODIN_FlashKernel_I9003-v1.0
echo.
echo 12) MobileODIN_FlashKernel_I9100G-v1.0
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

if %action%==1 goto opt1
if %action%==2 goto opt2
if %action%==3 goto opt3
if %action%==4 goto opt4
if %action%==5 goto opt5
if %action%==6 goto opt6
if %action%==7 goto opt7
if %action%==8 goto opt8
if %action%==9 goto opt9
if %action%==10 goto opt10
if %action%==11 goto opt11
if %action%==12 goto opt12


goto reset



:main2
set action=99
%showbanner%
echo.
echo.
echo Select a FlashKernel to download and Press ENTER:
echo.
echo.
echo 13) MobileODIN_FlashKernel_I9100-v1.0
echo.
echo 14) MobileODIN_FlashKernel_I9100-v2.0
echo.
echo 15) MobileODIN_FlashKernel_I9300-v3.0
echo.
echo 16) MobileODIN_FlashKernel_L710-v2.0
echo.
echo 17) MobileODIN_FlashKernel_MAGURO-v2.0
echo.
echo 18) MobileODIN_FlashKernel_N7000-v1.0
echo.
echo 19) MobileODIN_FlashKernel_N7000-v2.0
echo.
echo 20) MobileODIN_FlashKernel_N8000-v3.0
echo.
echo 21) MobileODIN_FlashKernel_P31xx-v2.0
echo.
echo 22) MobileODIN_FlashKernel_P51xx-v2.0
echo.
echo 23) MobileODIN_FlashKernel_P1000-v1.0
echo.
echo 24) MobileODIN_FlashKernel_P1000-v2.0
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
if %action%==R goto main
if %action%==r goto main

:: Check Next Page flag
if %action%==N goto main3
if %action%==n goto main3

:: Reject any number lower than the lowest menu item
if %action% lss 13 goto main2

:: Reject any number higher than the highest menu item
if %action% gtr 24 goto main2

if %action%==13 goto opt13
if %action%==14 goto opt14
if %action%==15 goto opt15
if %action%==16 goto opt16
if %action%==17 goto opt17
if %action%==18 goto opt18
if %action%==19 goto opt19
if %action%==20 goto opt20
if %action%==21 goto opt21
if %action%==22 goto opt22
if %action%==23 goto opt23
if %action%==24 goto opt24


:main3
set action=99
%showbanner%
echo.
echo.
echo Select a FlashKernel to download and Press ENTER:
echo.
echo.
echo 25) MobileODIN_FlashKernel_P6200-v2.0
echo.
echo 26) MobileODIN_FlashKernel_P6800-v2.0
echo.
echo 27) MobileODIN_FlashKernel_P7500-v2.0
echo.
echo 28) MobileODIN_FlashKernel_P7510-v2.0
echo.
echo 29) MobileODIN_FlashKernel_R530-v2.0
echo.
echo 30) MobileODIN_FlashKernel_T999-v2.0
echo.
echo 31) MobileODIN_FlashKernel_TORO-v2.0
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto main2
if %action%==r goto main2

:: Reject any number lower than the lowest menu item
if %action% lss 24 goto main3

:: Reject any number higher than the highest menu item
if %action% gtr 31 goto main3

if %action%==25 goto opt25
if %action%==26 goto opt26
if %action%==27 goto opt27
if %action%==28 goto opt28
if %action%==29 goto opt29
if %action%==30 goto opt30
if %action%==31 goto opt31


goto main3


:opt1

set fk=MobileODIN_FlashKernel_D710-v1.0.apk

goto dlnow


:opt2

set fk=MobileODIN_FlashKernel_I535-v2.0.apk

goto dlnow


:opt3

set fk=MobileODIN_FlashKernel_I747-v2.0.apk

goto dlnow


:opt4

set fk=MobileODIN_FlashKernel_I777-v1.0.apk

goto dlnow


:opt5

set fk=MobileODIN_FlashKernel_I896-v1.0.apk

goto dlnow


:opt6

set fk=MobileODIN_FlashKernel_I5500-v1.0.apk

goto dlnow


:opt7

set fk=MobileODIN_FlashKernel_I9000B-v1.0.apk

goto dlnow


:opt8

set fk=MobileODIN_FlashKernel_I9000M-v1.0.apk

goto dlnow


:opt9

set fk=MobileODIN_FlashKernel_I9000-v1.0.apk

goto dlnow


:opt10

set fk=MobileODIN_FlashKernel_I9000-v2.0.apk

goto dlnow


:opt11

set fk=MobileODIN_FlashKernel_I9003-v1.0.apk

goto dlnow


:opt12

set fk=MobileODIN_FlashKernel_I9100G-v1.0.apk

goto dlnow


:opt13

set fk=MobileODIN_FlashKernel_I9100-v1.0.apk

goto dlnow


:opt14

set fk=MobileODIN_FlashKernel_I9100-v2.0.apk

goto dlnow


:opt15

set fk=MobileODIN_FlashKernel_I9300-v3.0

goto dlnow


:opt16

set fk=MobileODIN_FlashKernel_L710-v2.0.apk

goto dlnow


:opt17

set fk=MobileODIN_FlashKernel_MAGURO-v2.0.apk

goto dlnow


:opt18

set fk=MobileODIN_FlashKernel_N7000-v1.0.apk

goto dlnow


:opt19

set fk=MobileODIN_FlashKernel_N7000-v2.0.apk

goto dlnow


:opt20

set fk=MobileODIN_FlashKernel_N8000-v3.0.apk

goto dlnow


:opt21

set fk=MobileODIN_FlashKernel_P31xx-v2.0.apk

goto dlnow


:opt22

set fk=MobileODIN_FlashKernel_P51xx-v2.0.apk

goto dlnow


:opt23

set fk=MobileODIN_FlashKernel_P1000-v1.0.apk

goto dlnow


:opt24

set fk=MobileODIN_FlashKernel_P1000-v2.0.apk

goto dlnow


:opt25

set fk=MobileODIN_FlashKernel_P6200-v2.0.apk

goto dlnow


:opt26

set fk=MobileODIN_FlashKernel_P6800-v2.0.apk

goto dlnow


:opt27

set fk=MobileODIN_FlashKernel_P7500-v2.0.apk

goto dlnow


:opt28

set fk=MobileODIN_FlashKernel_P7510-v2.0.apk

goto dlnow


:opt29

set fk=MobileODIN_FlashKernel_R530-v2.0.apk

goto dlnow


:opt30

set fk=MobileODIN_FlashKernel_T999-v2.0.apk

goto dlnow


:opt31

set fk=MobileODIN_FlashKernel_TORO-v2.0.apk

goto dlnow




:dlnow
%showbanner%
echo.
echo.
echo Downloading %fk%....
echo.
echo.


if not exist "%dl_path%" md "%dl_path%"

%cocolor% 0a

set dl_get=%wget% -O "%dl_path%\%fk%" "%dl_server%/flashing/apk/MobileODIN/flashkernel/%fk%"

if exist "%dl_path%\%fk%" set pushtemp="%dl_path%\%fk%"

%dl_get%


goto installq



:installq
set installtodevice=99
%showbanner%
echo.
echo.
echo Do you want to install this file to your device now? [Y/N]:
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

set /p installtodevice=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %installtodevice%==R goto reset
if %installtodevice%==r goto reset

if %installtodevice%==Y goto installapk
if %installtodevice%==y goto installapk


if %installtodevice%==N goto reset
if %installtodevice%==n goto reset



:: Reject any number higher than the highest menu item
if %installtodevice% gtr 0 goto installq

goto installq



:installapk
::%adb% install %pushtemp%
echo "%dl_path%\%fk%"
pause
%adb% install "%dl_path%\%fk%"

goto reset


:end




