@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:: Not Currently Working Re-Direct
call "scripts\unavailable.cmd"
goto end


:set_var
set action=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
%cocolor% 0a
echo Current Exploit: %m_exploit%
%cocolor% 0e
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Run Generic Script Based on Device
echo.
echo 2) Run Generic Script Based on Exploit
echo.
echo 3) Manually Write and Execute a Script
echo.
echo 4) Push The Loaded Exploit onto Device
echo.
echo 5) Set Permissions on Needed Files
echo.
echo 6) Special Instructions Before Execution
echo.
echo 7) Execute Exploit Using Current Settings
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
if %action% gtr 7 goto reset

if %action%==1 set m_scripting=

if %action%==2 set m_scripting=

if %action%==3 set m_scripting=


goto reset




:end


