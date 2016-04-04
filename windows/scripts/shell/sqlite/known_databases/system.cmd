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
echo Select a SYSTEM DATABASE from below and Press ENTER:
echo.
echo.
echo 1) Accounts
echo.
echo 2) Browser
echo.
echo 3) Calender Storage
echo.
echo 4) Clock
echo.
echo 5) Contacts Storage
echo.
echo 6) Download Manager
echo.
echo 7) DRM Protected Content Storage
echo.
echo 8) Email
echo.
echo 9) Keychain
echo.
echo 10) Media Storage
echo.
echo 11) Messaging
echo.
echo 12) Phone/Messaging Storage
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto end
if %action%==r goto end

:: Check Next Page flag
if %action%==N goto main2
if %action%==n goto main2


:: Reject any number higher than the highest menu item
if %action% gtr 12 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

if %action%==7 goto opt7

if %action%==8 goto opt8

if %action%==9 goto opt9

if %action%==10 goto opt10

if %action%==11 goto opt11

if %action%==12 goto opt12

goto reset



:main2
set action=99
%showbanner%
echo.
echo.
echo Select a SYSTEM DATABASE from below and Press ENTER:
echo.
echo.
echo 13) Settings Storage
echo.
echo 14) User Dictionary
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto main
if %action%==r goto main

:: Reject any number lower than the lowest menu item
if %action% lss 13 goto main2

:: Reject any number higher than the highest menu item
if %action% gtr 14 goto main2

if %action%==13 goto opt13

if %action%==14 goto opt14


goto reset




:opt1
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_accountsdb% "%db_temp%\%system_accountsdb%"

if not exist "%db_temp%\%system_accountsdb%" goto opt1a

%sqlitedb% "%db_temp%\%system_accountsdb%"

set pc_current_db_file="%db_temp%\%system_accountsdb%"
set device_current_db_file=%system_accountsdb%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt1a
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_accountsdb2% "%db_temp%\%system_accountsdb2%"

%sqlitedb% "%db_temp%\%system_accountsdb2%"

set pc_current_db_file="%db_temp%\%system_accountsdb2%"
set device_current_db_file=%system_accountsdb2%

call "scripts\shell\sqlite\pushback.cmd"

goto reset



:opt2
set action_browser=99
%showbanner%
echo.
echo.
echo Select a BROWSER DATABASE from below and Press ENTER:
echo.
echo.
echo 1) autofill.db
echo.
echo 2) browser2.db
echo.
echo 3) db.sql
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action_browser=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action_browser%==R goto main
if %action_browser%==r goto main

:: Reject any number higher than the highest menu item
if %action_browser% gtr 3 goto opt2

if %action_browser%==1 goto opt2a

if %action_browser%==2 goto opt2b

if %action_browser%==3 goto opt2c


:opt2a
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_browser_autofill% "%db_temp%\%system_browser_autofill%"

%sqlitedb% "%db_temp%\%system_browser_autofill%"

set pc_current_db_file="%db_temp%\%system_browser_autofill%"
set device_current_db_file=%system_browser_autofill%

call "scripts\shell\sqlite\pushback.cmd"

goto opt3


:opt2b
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_browser_browser2% "%db_temp%\%system_browser_browser2%"

%sqlitedb% "%db_temp%\%system_browser_browser2%"

set pc_current_db_file="%db_temp%\%system_browser_browser2%"
set device_current_db_file=%system_browser_browser2%

call "scripts\shell\sqlite\pushback.cmd"

goto opt3


:opt2c
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_browser_db% "%db_temp%\%system_browser_db%"

%sqlitedb% "%db_temp%\%system_browser_db%"

set pc_current_db_file="%db_temp%\%system_browser_db%"
set device_current_db_file=%system_browser_db%

call "scripts\shell\sqlite\pushback.cmd"

goto opt3


:opt3
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_calender% "%db_temp%\%system_calender%"

%sqlitedb% "%db_temp%\%system_calender%"

set pc_current_db_file="%db_temp%\%system_calender%"
set device_current_db_file=%system_calender%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt4
set action_clock=99
%showbanner%
echo.
echo.
echo Select a CLOCK DATABASE from below and Press ENTER:
echo.
echo.
echo 1) alarms.db
echo.
echo 2) timers.db
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action_clock=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action_clock%==R goto main
if %action_clock%==r goto main

:: Reject any number higher than the highest menu item
if %action_clock% gtr 2 goto opt4

if %action_clock%==1 goto opt4a

if %action_clock%==2 goto opt4b


:opt4a
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_clock_alarms% "%db_temp%\%system_clock_alarms%"

%sqlitedb% "%db_temp%\%system_clock_alarms%"

set pc_current_db_file="%db_temp%\%system_clock_alarms%"
set device_current_db_file=%system_clock_alarms%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt4b
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_clock_timers% "%db_temp%\%system_clock_timers%"

%sqlitedb% "%db_temp%\%system_clock_timers%"

set pc_current_db_file="%db_temp%\%system_clock_timers%"
set device_current_db_file=%system_clock_timers%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt5
set action_contacts=99
%showbanner%
echo.
echo.
echo Select a CONTACTS DATABASE from below and Press ENTER:
echo.
echo.
echo 1) contacts2.db
echo.
echo 2) profile.db
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action_contacts=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action_contacts%==R goto main
if %action_contacts%==r goto main

:: Reject any number higher than the highest menu item
if %action_contacts% gtr 2 goto opt5

if %action_contacts%==1 goto opt5a

if %action_contacts%==2 goto opt5b


:opt5a
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_contacts_storage_contacts2% "%db_temp%\%system_contacts_storage_contacts2%"

%sqlitedb% "%db_temp%\%system_contacts_storage_contacts2%"

set pc_current_db_file="%db_temp%\%system_contacts_storage_contacts2%"
set device_current_db_file=%system_contacts_storage_contacts2%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt5b
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_contacts_storage_profile% "%db_temp%\%system_contacts_storage_profile%"

%sqlitedb% "%db_temp%\%system_contacts_storage_profile%"

set pc_current_db_file="%db_temp%\%system_contacts_storage_profile%"
set device_current_db_file=%system_contacts_storage_profile%

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

%adb% pull %system_download_manager% "%db_temp%\%system_download_manager%"

%sqlitedb% "%db_temp%\%system_download_manager%"

set pc_current_db_file="%db_temp%\%system_download_manager%"
set device_current_db_file=%system_download_manager%

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

%adb% pull %system_drm_protected_content% "%db_temp%\%system_drm_protected_content%"

%sqlitedb% "%db_temp%\%system_drm_protected_content%"

set pc_current_db_file="%db_temp%\%system_drm_protected_content%"
set device_current_db_file=%system_drm_protected_content%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt8
set action_email=99
%showbanner%
echo.
echo.
echo Select a EMAIL DATABASE from below and Press ENTER:
echo.
echo.
echo 1) EmailProvider.db
echo.
echo 2) EmailProviderBackup.db
echo.
echo 3) EmailProviderBody.db
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action_email=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action_contacts%==R goto main
if %action_contacts%==r goto main

:: Reject any number higher than the highest menu item
if %action_contacts% gtr 3 goto opt8

if %action_contacts%==1 goto opt8a

if %action_contacts%==2 goto opt8b

if %action_contacts%==2 goto opt8c


:opt8a
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_email_EmailProvider% "%db_temp%\%system_email_EmailProvider%"

%sqlitedb% "%db_temp%\%system_email_EmailProvider%"

set pc_current_db_file="%db_temp%\%system_email_EmailProvider%"
set device_current_db_file=%system_email_EmailProvider%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt8b
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_email_EmailProviderBackup% "%db_temp%\%system_email_EmailProviderBackup%"

%sqlitedb% "%db_temp%\%system_email_EmailProviderBackup%"

set pc_current_db_file="%db_temp%\%system_email_EmailProviderBackup%"
set device_current_db_file=%system_email_EmailProviderBackup%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt8c
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_email_EmailProviderBody% "%db_temp%\%system_email_EmailProviderBody%"

%sqlitedb% "%db_temp%\%system_email_EmailProviderBody%"

set pc_current_db_file="%db_temp%\%system_email_EmailProviderBody%"
set device_current_db_file=%system_email_EmailProviderBody%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt9
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_keychain_grants% "%db_temp%\%system_keychain_grants%"

%sqlitedb% "%db_temp%\%system_keychain_grants%"

set pc_current_db_file="%db_temp%\%system_keychain_grants%"
set device_current_db_file=%system_keychain_grants%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt10
set action_media_storage=99
%showbanner%
echo.
echo.
echo Select a MEDIA STORAGE DATABASE from below and Press ENTER:
echo.
echo.
echo 1) internal.db
echo.
echo 2) external.db
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action_media_storage=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action_media_storage%==R goto main
if %action_media_storage%==r goto main

:: Reject any number higher than the highest menu item
if %action_media_storage% gtr 2 goto opt10

if %action_media_storage%==1 goto opt10a

if %action_media_storage%==2 goto opt10b


:opt10a
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_media_storage_internal% "%db_temp%\%system_media_storage_internal%"

%sqlitedb% "%db_temp%\%system_media_storage_internal%"

set pc_current_db_file="%db_temp%\%system_media_storage_internal%"
set device_current_db_file=%system_media_storage_internal%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt10b
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_media_storage_external% "%db_temp%\%system_media_storage_external%"

%sqlitedb% "%db_temp%\%system_media_storage_external%"

set pc_current_db_file="%db_temp%\%system_media_storage_external%"
set device_current_db_file=%system_media_storage_external%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt11
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_messaging_message_templates% "%db_temp%\%system_messaging_message_templates%"

%sqlitedb% "%db_temp%\%system_messaging_message_templates%"

set pc_current_db_file="%db_temp%\%system_messaging_message_templates%"
set device_current_db_file=%system_messaging_message_templates%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt12
set action_phone_storage=99
%showbanner%
echo.
echo.
echo Select a PHONE DATABASE from below and Press ENTER:
echo.
echo.
echo 1) mmssms.db
echo.
echo 2) telephony.db
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action_phone_storage=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action_phone_storage%==R goto main
if %action_phone_storage%==r goto main

:: Reject any number higher than the highest menu item
if %action_phone_storage% gtr 2 goto opt12

if %action_phone_storage%==1 goto opt12a

if %action_phone_storage%==2 goto opt12b


:opt12a
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_phone_messaging_mmssms% "%db_temp%\%system_phone_messaging_mmssms%"

%sqlitedb% "%db_temp%\%system_phone_messaging_mmssms%"

set pc_current_db_file="%db_temp%\%system_phone_messaging_mmssms%"
set device_current_db_file=%system_phone_messaging_mmssms%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt12b
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_phone_messaging_telephony% "%db_temp%\%system_phone_messaging_telephony%"

%sqlitedb% "%db_temp%\%system_phone_messaging_telephony%"

set pc_current_db_file="%db_temp%\%system_phone_messaging_telephony%"
set device_current_db_file=%system_phone_messaging_telephony%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt13
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_settings_storage% "%db_temp%\%system_settings_storage%"

%sqlitedb% "%db_temp%\%system_settings_storage%"

set pc_current_db_file="%db_temp%\%system_settings_storage%"
set device_current_db_file=%system_settings_storage%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:opt14
%showbanner%
echo.
echo.
echo Please close SQLite Database Browser To Continue....
echo.
echo.

if not exist "%db_temp%" md "%db_temp%"

%adb% pull %system_user_dictionary% "%db_temp%\%system_user_dictionary%"

%sqlitedb% "%db_temp%\%system_user_dictionary%"

set pc_current_db_file="%db_temp%\%system_user_dictionary%"
set device_current_db_file=%system_user_dictionary%

call "scripts\shell\sqlite\pushback.cmd"

goto reset


:end


