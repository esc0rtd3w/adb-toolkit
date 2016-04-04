@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

::call "scripts\get_info_bar.cmd"


:: Check for compatible device
if not %ro_product_manufacturer_text%==Motorola %nocompat%



:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) DROID 3 easy root script v7
echo.
echo 2) motofail_windows
echo.
echo 3) MotorolaOneClickRoot_psouza4
echo.
echo 4) petes-motorola-support-tools
echo.
echo 5) Root Moto Bravo (one click)
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
if %action% gtr 5 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5



goto reset



:opt1
%showbanner%
echo.
echo.
set launchfile=Click to root your DROID 3.bat
set currentpath=bin\rooting\devices\motorola
set rarfile=DROID 3 easy root script v7.rar
set rartext=DROID 3 easy root script v7

%extract_rar%

goto reset


:opt2
%showbanner%
echo.
echo.
set launchfile=run.bat
set currentpath=bin\rooting\devices\motorola
set rarfile=motofail_windows.rar
set rartext=motofail_windows

%extract_rar%

goto reset


:opt3
%showbanner%
echo.
echo.
set launchfile=MotorolaOneClickRoot.exe
set currentpath=bin\rooting\devices\motorola
set rarfile=MotorolaOneClickRoot_psouza4.rar
set rartext=MotorolaOneClickRoot_psouza4

%extract_rar%

goto reset


:opt4
%showbanner%
echo.
echo.
set launchfile=Petes Motorola Root Tools.exe
set currentpath=bin\rooting\devices\motorola
set rarfile=petes-motorola-support-tools.rar
set rartext=petes-motorola-support-tools

%extract_rar%

goto reset


:opt5
%showbanner%
echo.
echo.
set launchfile=Install Gingerbreak and 2ndInitDefy.bat
set currentpath=bin\rooting\devices\motorola
set rarfile=Root Moto Bravo.rar
set rartext=Root Moto Bravo

%extract_rar%

goto reset



:end


