@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:: Getting ADB Root Access
%getadbroot%


:set_var
set customdb=data/system/users/0/accounts.db

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
%cocolor% 0d
echo ** ALL FILES WILL BE SAVED TO: %db_temp% **
%cocolor% 0e
echo.
echo.
echo Enter a Full Database Path below and press ENTER:
echo.
echo Example: data/system/users/0/accounts.db
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p customdb=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %customdb%==R goto end
if %customdb%==r goto end


:: Reject any number higher than the highest menu item
::if %customdb% gtr 98 goto reset


echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %customdb% "%db_temp%\%customdb%"

%sqlitedb% "%db_temp%\%customdb%"

set pc_current_db_file="%db_temp%\%customdb%"
set device_current_db_file=%customdb%

call "scripts\shell\sqlite\pushback.cmd"


goto reset




:end


