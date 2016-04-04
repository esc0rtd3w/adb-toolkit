@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set apkver=99
set apkpath=bin\rooting\apk
set zipfile=none
set ziptext=none

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an APK Root Solution from below and Press ENTER to Install:
echo.
echo.
echo 1) AndRoot
echo.
echo 2) BurritoRoot
echo.
echo 3) ExynosAbuse
echo.
echo 4) Framaroot
echo.
echo 5) Gingerbreak
echo.
echo 6) InstantRoot
echo.
echo 7) Kindleroot
echo.
echo 8) LGPwn
echo.
echo 9) M9 Root
echo.
echo 10) M44 Tools
echo.
echo 11) MotoRoot
echo.
echo 12) Motorola Unknown Enabler
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p apkver=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %apkver%==R goto end
if %apkver%==r goto end

:: Check Next Page flag
if %apkver%==N goto main2
if %apkver%==n goto main2


:: Reject any number higher than the highest menu item
if %apkver% gtr 12 goto reset

if %apkver%==1 goto opt1

if %apkver%==2 goto opt2

if %apkver%==3 goto opt3

if %apkver%==4 goto opt4

if %apkver%==5 goto opt5

if %apkver%==6 goto opt6

if %apkver%==7 goto opt7

if %apkver%==8 goto opt8

if %apkver%==9 goto opt9

if %apkver%==10 goto opt10

if %apkver%==11 goto opt11

if %apkver%==12 goto opt12

goto reset


:main2
set apkver=99

%showbanner%
echo.
echo.
echo Select an APK Root Solution from below and Press ENTER to Install:
echo.
echo.
echo 13) PwnMyMoto
echo.
echo 14) Poot Debug
echo.
echo 15) SndInitDefy
echo.
echo 16) Towel Root
echo.
echo 17) Z4 Root
echo.
echo 18) Z4 Root (hnczp-ics)
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p apkver=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %apkver%==R goto main
if %apkver%==r goto main


:: Reject any number higher than the highest menu item
if %apkver% gtr 18 goto main2


if %apkver%==13 goto opt13

if %apkver%==14 goto opt14

if %apkver%==15 goto opt15

if %apkver%==16 goto opt16

if %apkver%==17 goto opt17

if %apkver%==18 goto opt18


goto main2


:opt1

%adb% install "%apkpath%\androot.apk"

goto whatnow


:opt2

%adb% install "%apkpath%\BurritoRoot3.apk"

goto whatnow


:opt3

%adb% install "%apkpath%\ExynosAbuse.apk"

goto whatnow


:opt4

%adb% install "%apkpath%\Framaroot.apk"

goto whatnow


:opt5

%adb% install "%apkpath%\GingerBreak\GingerBreak-v1.20.apk"

goto whatnow


:opt6

%adb% install "%apkpath%\InstantRoot.apk"

goto whatnow


:opt7

%adb% install "%apkpath%\kindleroot.apk"

goto whatnow


:opt8

%adb% install "%apkpath%\LGPwn.apk"

goto whatnow


:opt9

%adb% install "%apkpath%\m9root.apk"

goto whatnow


:opt10

%adb% install "%apkpath%\m44tools.apk"

goto whatnow


:opt11

%showbanner%
echo.
echo.
echo Choose Carrier and press ENTER:
echo.
echo.
echo 1) Generic
echo.
echo 2) ATT
echo.
echo 3) Rogers
echo.
echo 4) Sprint
echo.
echo 5) U.S. Cellular
echo.
echo 6) Verizon
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e

set /p carrierSelect=

:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %carrierSelect%==R goto main
if %carrierSelect%==r goto main

:: Reject any number higher than the highest menu item
if %carrierSelect% gtr 6 goto opt11

if %carrierSelect%==1 %adb% install "%apkpath%\MotoRoot\MotoRoot1.1-Droid.apk"

if %carrierSelect%==2 %adb% install "%apkpath%\MotoRoot\MotoRoot1.1-ATT.apk"

if %carrierSelect%==3 %adb% install "%apkpath%\MotoRoot\MotoRoot1.1-Rogers.apk"

if %carrierSelect%==4 %adb% install "%apkpath%\MotoRoot\MotoRoot1.1-Sprint.apk"

if %carrierSelect%==5 %adb% install "%apkpath%\MotoRoot\MotoRoot1.1-USCellular.apk"

if %carrierSelect%==6 %adb% install "%apkpath%\MotoRoot\MotoRoot1.1-Verizon.apk"

goto whatnow


:opt12

%adb% install "%apkpath%\com.motorola.android.unknownenabler.apk"

goto whatnow


:opt13

%showbanner%
echo.
echo.
echo Choose Carrier and press ENTER:
echo.
echo.
echo 1) Generic
echo.
echo 2) ATT
echo.
echo 3) Brazil
echo.
echo 4) Mexico
echo.
echo 5) Movistar
echo.
echo 6) Rogers
echo.
echo 7) Sprint
echo.
echo 8) T-Mobile
echo.
echo 9) U.S. Cellular
echo.
echo 10) Verizon
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e

set /p carrierSelect=

:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %carrierSelect%==R goto main2
if %carrierSelect%==r goto main2

:: Reject any number higher than the highest menu item
if %carrierSelect% gtr 10 goto opt13

if %carrierSelect%==1 %adb% install "%apkpath%\PwnMyMoto-1.4.3-Droid-IHateToolKits.apk"

if %carrierSelect%==2 %adb% install "%apkpath%\PwnMyMoto-1.4.3-ATT-IHateToolKits.apk"

if %carrierSelect%==3 %adb% install "%apkpath%\PwnMyMoto-1.4.3-Brazil-IHateToolKits.apk"

if %carrierSelect%==4 %adb% install "%apkpath%\PwnMyMoto-1.4.3-Mexico-IHateToolKits.apk"

if %carrierSelect%==5 %adb% install "%apkpath%\PwnMyMoto-1.4.3-Movistar-IHateToolKits.apk"

if %carrierSelect%==6 %adb% install "%apkpath%\PwnMyMoto-1.4.3-Rogers-IHateToolKits.apk"

if %carrierSelect%==7 %adb% install "%apkpath%\PwnMyMoto-1.4.3-Sprint-IHateToolKits.apk"

if %carrierSelect%==8 %adb% install "%apkpath%\PwnMyMoto-1.4.3-TMobile-IHateToolKits.apk"

if %carrierSelect%==9 %adb% install "%apkpath%\PwnMyMoto-1.4.3-USCellular-IHateToolKits.apk"

if %carrierSelect%==10 %adb% install "%apkpath%\PwnMyMoto-1.4.3-Verizon-IHateToolKits.apk"

goto whatnow


:opt14

%adb% install "%apkpath%\Ministro\ministro2-6.0.apk"
%adb% install "%apkpath%\Poot-debug.apk"

goto whatnow


:opt15

%adb% install "%apkpath%\SndInitDefy.apk"

goto whatnow


:opt16

%adb% install "%apkpath%\TowelRoot\tr3.apk"

goto whatnow


:opt17

%adb% install "%apkpath%\z4root\z4root-1.3.0.apk"

goto whatnow


:opt18

%adb% install "%apkpath%\z4root_hnczp-ics(fix).apk"

goto whatnow



:whatnow

%showbanner%
echo.
echo.
echo The app has been installed to your device!
echo.
echo.
echo Please open it on your device and run to finish the rooting process.
echo.
echo.
echo.
echo Press any key to return to previous menu....

echo.
pause>nul

goto reset




:end


