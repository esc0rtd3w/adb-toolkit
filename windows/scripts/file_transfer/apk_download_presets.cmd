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
echo 1) Emulators
echo.
echo 2) Google
echo.
echo 3) Launchers
echo.
echo 4) Media
echo.
echo 5) Misc
echo.
echo 6) MMS (Text and Multimedia Messaging)
echo.
echo 7) News
echo.
echo 8) Pentest
echo.
echo 9) Scripting
echo.
echo 10) Social
echo.
echo 11) Tethering
echo.
echo 12) Utilities
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
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 13) VOIP
echo.
echo 14) Web
echo.
echo 15) Widgets
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

:: Reject any number lower than the lowest menu item
if %action% lss 13 goto main2

:: Reject any number higher than the highest menu item
if %action% gtr 15 goto main2

if %action%==13 goto opt13

if %action%==14 goto opt14

if %action%==15 goto opt15

goto reset



:opt1



goto reset


:opt2



goto reset


:opt3



goto reset


:opt4



goto reset


:opt5



goto reset


:opt6



goto reset


:opt7



goto reset


:opt8



goto reset


:opt9



goto reset


:opt10



goto reset


:opt11



goto reset


:opt12



goto reset


:opt13



goto reset


:opt14



goto reset


:opt15



goto reset


:opt16



goto reset


:opt17



goto reset


:opt18



goto reset


:opt19



goto reset


:opt20



goto reset


:opt21



goto reset


:opt22



goto reset


:opt23



goto reset


:opt24



goto reset


:end


