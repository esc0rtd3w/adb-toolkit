@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

::call "scripts\get_info_bar.cmd"

:: Check for compatible device
if not %ro_product_manufacturer_text%==Samsung %nocompat_warn%


:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) ATT Captivate One-Click Root (Galaxy S)
echo.
echo 2) KMS (Killing Me Softly)
echo.
echo 3) ShabbyMod (Killing Me Softly)
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
if %action% gtr 3 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3


goto reset



:opt1
%showbanner%
echo.
echo.
set launchfile=ATT Captivate One-Click Root.exe
set currentpath=bin\rooting\devices\samsung
set rarfile=captivate.rar
set rartext=captivate

%extract_rar%

goto reset


:opt2
%showbanner%
echo.
echo.
set launchfile=PrevailToExistence.bat
set currentpath=bin\rooting\devices\samsung\multi
set rarfile=kms.rar
set rartext=kms

%extract_rar%

goto reset


:opt3
%showbanner%
echo.
echo.
set launchfile=Shabbymod-0.9-Loaded.bat
set currentpath=bin\rooting\devices\samsung\multi
set rarfile=shabbymod.rar
set rartext=shabbymod

%extract_rar%

goto reset



:end


