@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

::call "scripts\get_info_bar.cmd"

:: Checking for HTC device
if not %ro_product_manufacturer_text%==HTC goto leavenow



:main
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Revolutionary 0.4pre4
echo.
echo 2) Unrevoked 3
echo.
echo 3) JuopunutBear (ControlBear) (Requires "Wire Trick")
echo.
echo 4) Device Specific (For devices that do not work with above tools)
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
if %action% gtr 4 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4


:opt1
:: Checking for HTC device
if not %ro_product_manufacturer_text%==HTC %nocompat%

call "scripts\rooting\revolutionary.cmd"

::start "%dependencyroot%" "revolutionary.exe"

goto reset


:opt2
:: Checking for HTC device
if not %ro_product_manufacturer_text%==HTC %nocompat%

start "%dependencyroot%" "unrevoked3.exe"

goto reset



:opt3
:: Checking for HTC device
if not %ro_product_manufacturer_text%==HTC %nocompat%

start "%dependencyroot%" "ControlBear.exe"

goto reset


:opt4
:: Checking for HTC device
if not %ro_product_manufacturer_text%==HTC %nocompat%

call "scripts\rooting\soff_devices.cmd"

goto reset


:leavenow

%showbanner%
echo.
echo.
echo Your device DOES NOT require this and IS NOT compatible!
echo.
echo Press any key to return to previous menu....
echo.
pause>nul

goto end

goto reset


:end


