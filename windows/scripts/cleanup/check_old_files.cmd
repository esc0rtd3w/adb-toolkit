@echo off

title Android ADB Toolkit                                        -[ adbtoolkit.com ]-



:reset

:set_var
set action=99

if not exist "c:\adbtk" md "c:\adbtk"



:main

cls
color 0e
echo -----------------------------------------------------------------------------
echo It appears you have old dependency files located in the SYSTEM32 folder!
echo.
echo These files are hosted locally within the toolkit and are no longer needed
echo in the SYSTEM32 folder.
echo.
echo You will be shown all files prior to removal.
echo -----------------------------------------------------------------------------
echo.
echo.
echo Please select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Do Not Remove These Files (Recommended)
echo.
echo 2) Safe Removal
echo.
echo 3) Full Removal
echo.
echo 4) Manual Removal
echo.
echo 5) View Non-Removable Files
echo.
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

echo noremove > "c:\adbtk\sys32.noremove"

goto end


:opt2

call "scripts\cleanup\remove_old_sys32_files_safe.cmd"

goto end


:opt3

call "scripts\cleanup\remove_old_sys32_files_full.cmd"

goto end


:opt4

call "scripts\cleanup\remove_old_sys32_files_manual.cmd"

goto end


:opt5

call "scripts\cleanup\remove_old_sys32_files_noremove.cmd"

goto end




:end





