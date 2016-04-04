@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set androidpath=99
set androidpath2=99
set androidpath3=99
set androidpath4=99
set androidpath5=99
set androidpath6=99

:: Setting default download path
set dl_path=c:\adbtk

:: Setting default remote path
set remote_path=BLANK

:: Setting Default Filename
set dl_filename=BLANK

:: Setting transfer mode
set mode=Backup From Device to PC

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo.
echo.
echo Current Mode: %mode%
echo.
echo.
echo Select an ACTION from below or press "C" for a Custom Path and Press ENTER:
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
echo 6) 
echo.
echo 7) 
echo.
echo 8) 
echo.
echo 9) 
echo.
echo 10) 
echo.
echo 11) 
echo.
echo 12) 
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p androidpath=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %androidpath%==R goto end
if %androidpath%==r goto end

:: Check Custom Path flag
if %androidpath%==C goto custpath
if %androidpath%==c goto custpath

:: Reject any number higher than the highest menu item
if %androidpath% gtr 12 goto reset

:: Fix empty path
if [%androidpath%]==[] set androidpath=c:\adbtemp\


if %androidpath%==1 goto opt1

if %androidpath%==2 goto opt2

if %androidpath%==3 goto opt3

if %androidpath%==4 goto opt4

if %androidpath%==5 goto opt5

if %androidpath%==6 goto opt6

if %androidpath%==7 goto opt7

if %androidpath%==8 goto opt8

if %androidpath%==9 goto opt9

if %androidpath%==10 goto opt10

if %androidpath%==11 goto opt11

if %androidpath%==12 goto opt12


:opt1
set androidpath=/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"

goto reset


:opt2
set androidpath=/sdcard/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"

goto reset


:opt3
set androidpath=/sdcard/DCIM/
set androidpath2=/sdcard/Camera/
set androidpath3=/sdcard/Pictures/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"
%adb% pull %androidpath2% "%destination%%androidpath2%"
%adb% pull %androidpath3% "%destination%%androidpath3%"

goto reset


:opt4
set androidpath=/sdcard/media/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"

goto reset


:opt5
set androidpath=/sdcard/Download/
set androidpath2=/sdcard/Downloads/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"
%adb% pull %androidpath2% "%destination%%androidpath2%"

goto reset


:opt6
set androidpath=/data/app/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"

goto reset


:opt7
set androidpath=/system/app/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"

goto reset


:opt8
set androidpath=/sdcard/data/
set androidpath2=/sdcard/android/
set androidpath3=/data/data/
set androidpath4=/data/user/0/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"
%adb% pull %androidpath2% "%destination%%androidpath2%"
%adb% pull %androidpath3% "%destination%%androidpath3%"
%adb% pull %androidpath4% "%destination%%androidpath4%"

goto reset


:opt9
set androidpath=/sdcard/.android_secure/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"

goto reset


:opt10
set androidpath=/system/media/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"

goto reset


:opt11
set androidpath=/system/bin/
set androidpath2=/system/xbin/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"
%adb% pull %androidpath2% "%destination%%androidpath2%"

goto reset


:opt12
set androidpath=/cache/
set androidpath2=/data/dalvik-cache/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"
%adb% pull %androidpath2% "%destination%%androidpath2%"

goto reset


:custpath
if %androidpath%==99 set androidpath=/

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type source file or directory on device and Press ENTER:
echo.
echo.
echo Be sure to include the trailing forward slash at the end of a directory "/"
echo.
echo.
echo.
echo Example: /sdcard/DCIM/
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p androidpath=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %androidpath%==R goto end
if %androidpath%==r goto end


goto custpath2


:custpath2

%showbanner%
echo.
echo.
echo Current Mode: %mode%
echo.
echo Current Source: %androidpath%
echo.
echo Current Destination: %destination%
echo.
echo.
echo.
echo.
echo Type destination file or directory on computer and Press ENTER:
echo.
echo.
echo Be sure to include the trailing backslash "\"  at the end of a directory
echo.
echo.
echo Example: C:\Users\Owner\Desktop\
echo.
echo.
echo.
echo Once you press ENTER on the keyboard, the transfer will proceed!
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p destination=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %destination%==R goto end
if %destination%==r goto end

if %destination%==default set destination=c:\adbtemp\

if not exist %destination% md %destination%

%adb% pull %androidpath% "%destination%%androidpath%"

goto reset


:end


