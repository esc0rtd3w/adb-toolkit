@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:: Not Currently Working Re-Direct
::call "scripts\unavailable.cmd"
::goto end

:reset

:set_var
set odinver=99
set odinpath=bin\flashing\odin

::call "scripts\get_info_bar.cmd"


:: Temporary Workaround for ODIN not launching properly from scripting
goto skipthis


:main
%showbanner%
echo.
echo.
echo Select an ODIN version from below and Press ENTER:
echo.
echo.
echo 1) Odin3 v1.00
echo.
echo 2) Odin3 v1.30
echo.
echo 3) Odin3 v1.61
echo.
echo 4) Odin3 v1.70
echo.
echo 5) Odin3 v1.82
echo.
echo 6) Odin3 v1.83
echo.
echo 7) Odin3 v1.85
echo.
echo 8) Odin3 v1.87
echo.
echo 9) Odin3 v3.04
echo.
echo 10) Odin3 v3.07
echo.
echo 11) Odin Multi Downloader v3.95
echo.
echo 12) Odin Multi Downloader v4.03
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p odinver=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %odinver%==R goto end
if %odinver%==r goto end

:: Check Next Page flag
if %odinver%==N goto main2
if %odinver%==n goto main2


:: Reject any number higher than the highest menu item
if %odinver% gtr 12 goto reset

if %odinver%==1 goto opt1

if %odinver%==2 goto opt2

if %odinver%==3 goto opt3

if %odinver%==4 goto opt4

if %odinver%==5 goto opt5

if %odinver%==6 goto opt6

if %odinver%==7 goto opt7

if %odinver%==8 goto opt8

if %odinver%==9 goto opt9

if %odinver%==10 goto opt10

if %odinver%==11 goto opt11

if %odinver%==12 goto opt12


goto reset


:main2
%showbanner%
echo.
echo.
echo Select an ODIN version from below and Press ENTER:
echo.
echo.
echo 13) Odin Multi Downloader v4.42
echo.
echo 14) Odin Multi Downloader v4.43
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p odinver=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %odinver%==R goto main
if %odinver%==r goto main


:: Reject any number higher than the highest menu item
if %odinver% gtr 14 goto main2

if %odinver%==13 goto opt13

if %odinver%==14 goto opt14

goto main2


:opt1

start "%odinpath%" "%odinpath%\Odin3.100.exe"

goto reset


:opt2

start "%odinpath%" "%odinpath%\Odin3.130.exe"

goto reset


:opt3

start "%odinpath%" "%odinpath%\Odin3.161.exe"

goto reset


:opt4

start "%odinpath%" "%odinpath%\Odin3.170.exe"

goto reset


:opt5

start "%odinpath%" "%odinpath%\Odin3.182.exe"

goto reset


:opt6

start "%odinpath%" "%odinpath%\Odin3.183.exe"

goto reset


:opt7

start "%odinpath%" "%odinpath%\Odin3.185.exe"

goto reset


:opt8

start "%odinpath%" "%odinpath%\Odin3.187.exe"

goto reset


:opt9

start "%odinpath%" "%odinpath%\Odin3.304.exe"

goto reset


:opt10

start "%odinpath%" "%odinpath%\Odin3.307.exe"

goto reset


:opt11

start "%odinpath%" "%odinpath%\Odin Multi Downloader v3.95.exe"

goto reset


:opt12

start "%odinpath%" "%odinpath%\Odin Multi Downloader v4.03.exe"

goto reset


:opt13

start "%odinpath%" "%odinpath%\Odin Multi Downloader v4.42.exe"

goto reset


:opt14

start "%odinpath%" "%odinpath%\Odin Multi Downloader v4.43.exe"

goto reset


:skipthis

%msgbox% "Due to a scripting problem launching from the CMD prompt, the ODIN folder will now be opened so you can choose your required version." "Temporary Solution" OK

explorer "%odinpath%"

goto end



:end


