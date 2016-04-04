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
echo Select a RECOVERY IMAGE to use from below and Press ENTER:
echo.
echo.
echo 1) 
echo.
echo 2) 
echo.
echo 3) 
echo.
echo 4) 
echo.
echo 5) 
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

if %action%==1 set m_recovery=

if %action%==2 set m_recovery=

if %action%==3 set m_recovery=

if %action%==4 set m_recovery=

if %action%==5 set m_recovery=


:: Install 4ext
::%adb% install support_files\download\4ext.apk
::%adb% shell am start -a android.intent.action.MAIN -n ext.recovery.updater/.RecoveryControl

:: Generic Recovery
::%adb% reboot-bootloader
::%fastboot% flash recovery recovery.img
::%fastboot% reboot
::%adb% wait-for-device
::%adb% reboot recovery

call "scripts\rooting\scripting.cmd"



:end


