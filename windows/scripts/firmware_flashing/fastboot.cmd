@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99


set boot=%fastboot% flash boot
set hboot=%fastboot% flash hboot
set erase=%fastboot% erase cache
set recovery=%fastboot% flash recovery

set oemlock=%fastboot% oem lock
set oemunlock=%fastboot% flash unlocktoken



::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Flash a Boot Image (IMG File)
echo.
echo 2) Flash an HBoot Image (IMG File)
echo.
echo 3) Flash a Recovery Image (IMG File)
echo.
echo 4) Flash a RUU Image (ZIP File)
echo.
echo 5) Erase Cache Partition
echo.
echo 6) OEM Lock
echo.
echo 7) OEM Unlock (using Unlock_code.bin)
echo.
echo 8) OEM RUU Reboot (for flashing stock roms)
echo.
echo 9) OEM Power Down (Power Down Device)
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
if %action% gtr 9 goto reset


if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

if %action%==7 goto opt7

if %action%==8 goto opt8

if %action%==9 goto opt9


:: Check BLANK entry
if [%action%]==[] goto reset
if [%action%]==[] goto reset


goto reset





:opt1
:: Setting default image
set input=boot.img

%showbanner%
echo.
echo.
echo Drag an IMG file into this window and Press ENTER:
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p input=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %input%==R goto end
if %input%==r goto end

:: Check BLANK entry
if [%input%]==[] goto reset
if [%input%]==[] goto reset

%boot% %input%

pause
goto reset


:opt2
:: Setting default image
set input=hboot.img

%showbanner%
echo.
echo.
echo Drag an IMG file into this window and Press ENTER:
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p input=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %input%==R goto end
if %input%==r goto end

:: Check BLANK entry
if [%input%]==[] goto reset
if [%input%]==[] goto reset

%hboot% %input%

pause
goto reset



:opt3
:: Setting default image
set input=recovery.img

%showbanner%
echo.
echo.
echo Drag an IMG file into this window and Press ENTER:
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p input=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %input%==R goto end
if %input%==r goto end

:: Check BLANK entry
if [%input%]==[] goto opt3
if [%input%]==[] goto opt3

%recovery% %input%
pause
goto reset


:opt4
%showbanner%
echo.
echo.
echo Flashing RUU Image....
echo.
echo.
echo.

%fastboot% flash zip
pause
goto reset


:opt5
%showbanner%
echo.
echo.
echo Erasing Cache....
echo.
echo.
echo.

%erase%
pause
goto reset


:opt6
%showbanner%
echo.
echo.
echo Performing OEM Lock....
echo.
echo.
echo.

%oemlock%
pause
goto reset



:opt7
:: Setting default token
set token=Unlock_code.bin

%showbanner%
echo.
echo.
echo Drag your "Unlock_code.bin" into this window and Press ENTER:
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p token=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %token%==R goto end
if %token%==r goto end

:: Check BLANK entry
if [%token%]==[] goto opt7
if [%token%]==[] goto opt7


goto reset


:opt8
%showbanner%
echo.
echo.
echo Performing OEM RUU Reboot....
echo.
echo.
echo.

%fastboot% oem rebootRUU

goto reset


:opt9
%showbanner%
echo.
echo.
echo Performing OEM Power Down....
echo.
echo.
echo.

%fastboot% oem powerdown

goto reset



:: Unlock Hboot (Thunderbolt Only???)
::%fastboot% oem mw 8d08ac54 1 31302E30

:: Alt Read Serial Number
::%fastboot% oem readserialno



:tokenbin
:: Setting default token
::set input=Unlock_code.bin

%showbanner%
echo.
echo.
echo Current Token: [%token%]
echo.
echo.
echo Current Task: [OEM Unlock using Unlock_code.bin]
echo.
echo.
echo.
echo Press any key to begin process....
echo.
echo.

pause>nul

::set input=Unlock_code.bin

%oemunlock% %token%
pause

goto reset







:end


