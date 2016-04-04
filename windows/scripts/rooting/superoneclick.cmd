@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set socver=99

set launchfile=SuperOneClick.exe
set currentpath=bin\rooting\devices\multi\superoneclick
set rarfile=none
set rartext=none

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a SuperOneClick version from below and Press ENTER:
echo.
echo.
echo 1) SuperOneClick v1.5.5
echo.
echo 2) SuperOneClick v1.6.5
echo.
echo 3) SuperOneClick v1.7.0
echo.
echo 4) SuperOneClick v1.9.1
echo.
echo 5) SuperOneClick v1.9.5
echo.
echo 6) SuperOneClick v2.1.0
echo.
echo 7) SuperOneClick v2.1.1
echo.
echo 8) SuperOneClick v2.2.0
echo.
echo 9) SuperOneClick v2.3.1
echo.
echo 10) SuperOneClick v2.3.3
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p socver=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %socver%==R goto end
if %socver%==r goto end


:: Reject any number higher than the highest menu item
if %socver% gtr 10 goto reset

if %socver%==1 goto opt1

if %socver%==2 goto opt2

if %socver%==3 goto opt3

if %socver%==4 goto opt4

if %socver%==5 goto opt5

if %socver%==6 goto opt6

if %socver%==7 goto opt7

if %socver%==8 goto opt8

if %socver%==9 goto opt9

if %socver%==10 goto opt10



goto reset


:opt1

set launchfile=SuperOneClick.exe
set currentpath=bin\rooting\devices\multi\superoneclick
set rarfile=superoneclick-1.5.5.rar
set rartext=superoneclick-1.5.5

%extract_rar%

goto reset


:opt2

set launchfile=SuperOneClick.exe
set currentpath=bin\rooting\devices\multi\superoneclick
set rarfile=superoneclick-1.6.5.rar
set rartext=superoneclick-1.6.5

%extract_rar%

goto reset


:opt3

set launchfile=SuperOneClick.exe
set currentpath=bin\rooting\devices\multi\superoneclick
set rarfile=superoneclick-1.7.0.rar
set rartext=superoneclick-1.7.0

%extract_rar%

goto reset


:opt4

set launchfile=SuperOneClick.exe
set currentpath=bin\rooting\devices\multi\superoneclick
set rarfile=superoneclick-1.9.1.rar
set rartext=superoneclick-1.9.1

%extract_rar%

goto reset


:opt5

set launchfile=SuperOneClick.exe
set currentpath=bin\rooting\devices\multi\superoneclick
set rarfile=superoneclick-1.9.5.rar
set rartext=superoneclick-1.9.5

%extract_rar%

goto reset


:opt6

set launchfile=SuperOneClick.exe
set currentpath=bin\rooting\devices\multi\superoneclick
set rarfile=superoneclick-2.1.0.rar
set rartext=superoneclick-2.1.0

%extract_rar%

goto reset


:opt7

set launchfile=SuperOneClick.exe
set currentpath=bin\rooting\devices\multi\superoneclick
set rarfile=superoneclick-2.1.1.rar
set rartext=superoneclick-2.1.1

%extract_rar%

goto reset


:opt8

set launchfile=SuperOneClick.exe
set currentpath=bin\rooting\devices\multi\superoneclick
set rarfile=superoneclick-2.2.0.rar
set rartext=superoneclick-2.2.0

%extract_rar%

goto reset


:opt9

set launchfile=SuperOneClick.exe
set currentpath=bin\rooting\devices\multi\superoneclick
set rarfile=superoneclick-2.3.1.rar
set rartext=superoneclick-2.3.1

%extract_rar%

goto reset


:opt10

set launchfile=SuperOneClick.exe
set currentpath=bin\rooting\devices\multi\superoneclick
set rarfile=superoneclick-2.3.3.rar
set rartext=superoneclick-2.3.3

%extract_rar%

goto reset




:end


