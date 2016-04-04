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
echo Select a SuperSU ZIP Version from below and Press ENTER:
echo.
echo.
echo 1) CWM-SuperSU-v1.25.zip
echo.
echo 2) CWM-SuperSU-v1.05.zip
echo.
echo 3) CWM-SuperSU-v1.04.zip
echo.
echo 4) CWM-SuperSU-v1.02.zip
echo.
echo 5) CWM-SuperSU-v1.01.zip
echo.
echo 6) CWM-SuperSU-v1.00.zip
echo.
echo 7) CWM-SuperSU-v0.99.zip
echo.
echo 8) CWM-SuperSU-v0.98.zip
echo.
echo 9) CWM-SuperSU-v0.97.zip
echo.
echo 10) CWM-SuperSU-v0.96.zip
echo.
echo 11) CWM-SuperSU-v0.95.zip
echo.
echo 12) CWM-SuperSU-v0.94.zip
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
%showbanner%
echo.
echo.
echo Select a SuperSU ZIP Version from below and Press ENTER:
echo.
echo.
echo 13) CWM-SuperSU-v0.93.zip
echo.
echo 14) CWM-SuperSU-v0.92.zip
echo.
echo 15) CWM-SuperSU-v0.90.zip
echo.
echo 16) CWM-SuperSU-v0.89.zip
echo.
echo 17) CWM-SuperSU-v0.88.zip
echo.
echo 18) CWM-SuperSU-v0.87.zip
echo.
echo 19) CWM-SuperSU-v0.75.zip
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
if %action% lss 19 goto main2

:: Reject any number higher than the highest menu item
if %action% gtr 19 goto main2

if %action%==13 goto opt13

if %action%==14 goto opt14

if %action%==15 goto opt15

if %action%==16 goto opt16

if %action%==17 goto opt17

if %action%==18 goto opt18

if %action%==19 goto opt19



:opt1

set dl_filename=CWM-SuperSU-v1.25.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"


goto reset


:opt2

set dl_filename=CWM-SuperSU-v1.05.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"


goto reset


:opt3

set dl_filename=CWM-SuperSU-v1.04.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"


goto reset


:opt4

set dl_filename=CWM-SuperSU-v1.02.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"


goto reset


:opt5

set dl_filename=CWM-SuperSU-v1.01.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"


goto reset


:opt6

set dl_filename=CWM-SuperSU-v1.00.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"


goto reset


:opt7

set dl_filename=CWM-SuperSU-v0.99.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"


goto reset


:opt8

set dl_filename=CWM-SuperSU-v0.98.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"


goto reset


:opt9

set dl_filename=CWM-SuperSU-v0.97.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"


goto reset


:opt10

set dl_filename=CWM-SuperSU-v0.96.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"


goto reset


:opt11

set dl_filename=CWM-SuperSU-v0.95.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt12

set dl_filename=CWM-SuperSU-v0.94.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt13

set dl_filename=CWM-SuperSU-v0.93.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt14

set dl_filename=CWM-SuperSU-v0.92.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt15

set dl_filename=CWM-SuperSU-v0.90.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt16

set dl_filename=CWM-SuperSU-v0.89.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt17

set dl_filename=CWM-SuperSU-v0.88.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt18

set dl_filename=CWM-SuperSU-v0.87.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt19

set dl_filename=CWM-SuperSU-v0.75.zip
set remote_path=rooting/su/zip

call "scripts\rooting\su_downloader.cmd"

goto reset



:end


