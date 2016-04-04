@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

:set_var
set action=99

:: Setting default download path
set dl_path=c:\adbtk

:: Setting default remote path
set remote_path=BLANK

:: Setting Default Filename
set dl_filename=BLANK

::call "scripts\get_info_bar.cmd"


:main
%showbanner%
echo.
echo.
echo Select a FACEBOOK DATABASE from below and Press ENTER:
echo.
echo.
echo 1) Main
echo.
echo 2) Contacts
echo.
echo 3) News Feed
echo.
echo 4) Prefs
echo.
echo 5) Threads
echo.
echo 6) Upload Manager
echo.
echo 7) Users
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

goto reset


:opt1
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %facebook_maindb% "%db_temp%\%facebook_maindb%"

%sqlitedb% "%db_temp%\%facebook_maindb%"

set pc_current_db_file="%db_temp%\%facebook_maindb%"
set device_current_db_file=%facebook_maindb%

call "scripts\shell\sqlite\pushback.cmd"


goto reset


:opt2
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %facebook_contactsdb% "%db_temp%\%facebook_contactsdb%"

%sqlitedb% "%db_temp%\%facebook_contactsdb%"

set pc_current_db_file="%db_temp%\%facebook_contactsdb%"
set device_current_db_file=%facebook_contactsdb%

call "scripts\shell\sqlite\pushback.cmd"


goto reset


:opt3
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %facebook_newsfeeddb% "%db_temp%\%facebook_newsfeeddb%"

%sqlitedb% "%db_temp%\%facebook_newsfeeddb%"

set pc_current_db_file="%db_temp%\%facebook_newsfeeddb%"
set device_current_db_file=%facebook_newsfeeddb%

call "scripts\shell\sqlite\pushback.cmd"


goto reset


:opt4
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %facebook_prefsdb% "%db_temp%\%facebook_prefsdb%"

%sqlitedb% "%db_temp%\%facebook_prefsdb%"

set pc_current_db_file="%db_temp%\%facebook_prefsdb%"
set device_current_db_file=%facebook_prefsdb%

call "scripts\shell\sqlite\pushback.cmd"


goto reset


:opt5
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %facebook_threadsdb% "%db_temp%\%facebook_threadsdb%"

%sqlitedb% "%db_temp%\%facebook_threadsdb%"

set pc_current_db_file="%db_temp%\%facebook_threadsdb%"
set device_current_db_file=%facebook_threadsdb%

call "scripts\shell\sqlite\pushback.cmd"


goto reset


:opt6
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %facebook_uploadmanagerdb% "%db_temp%\%facebook_uploadmanagerdb%"

%sqlitedb% "%db_temp%\%facebook_uploadmanagerdb%"

set pc_current_db_file="%db_temp%\%facebook_uploadmanagerdb%"
set device_current_db_file=%facebook_uploadmanagerdb%

call "scripts\shell\sqlite\pushback.cmd"


goto reset


:opt7
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %facebook_usersdb% "%db_temp%\%facebook_usersdb%"

%sqlitedb% "%db_temp%\%facebook_usersdb%"

set pc_current_db_file="%db_temp%\%facebook_usersdb%"
set device_current_db_file=%facebook_usersdb%

call "scripts\shell\sqlite\pushback.cmd"

goto reset



:end


