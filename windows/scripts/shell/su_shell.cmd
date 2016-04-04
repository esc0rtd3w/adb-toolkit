@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:: Check Root Status
if %rootstatus%==Unrooted %msgbox% %txtnoroot%


:set_var
set action=99

::call "scripts\get_info_bar.cmd"


:main
%showbanner%
%cocolor% 0b
echo.
echo.
echo -------------------------------------------------------------------------------
echo Android Shell Help
echo.
echo All commands are to be entered "without quotes"
echo.
echo 1) Type "adb shell" and press ENTER to begin your session
echo.
echo 2) Check for "#" symbol for Superuser. If not shown type "su" and press ENTER
echo.
echo Issue any linux commands you want to while in your session
echo.
echo To end your session and exit Android Shell hit CTRL+C
echo.
echo To exit CMD Prompt after exiting Shell, type "exit" to return to menu
echo.
echo If prompted "Terminate batch job", type "N" and press ENTER to return to menu
echo -------------------------------------------------------------------------------
echo.

cmd.exe -k %adb% shell


:end

%adbstart%


