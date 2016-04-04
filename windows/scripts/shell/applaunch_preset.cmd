@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set appchoice=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select an Application to Launch on Device and Press ENTER:
echo.
echo.
echo 1) Stock Apps (Camera, Gallery, Calculator, Email, Calender, Clock, etc)
echo.
echo 2) Google Apps (Play Store, Voice, Gmail, Maps, G+, Youtube, etc)
echo.
echo 3) Home Screen Launchers (Trebuchet, GoLauncher, ADWLauncher, etc)
echo.
echo 4) Web Browsers (Firefox, Chrome, Opera, Dolphin, Skyfire, etc)
echo.
echo 5) Toggle Torch (On/Off)
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p appchoice=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %appchoice%==R goto end
if %appchoice%==r goto end


:: Reject any number higher than the highest menu item
if %appchoice% gtr 5 goto reset

if %appchoice%==1 goto opt1

if %appchoice%==2 goto opt2

if %appchoice%==3 goto opt3

if %appchoice%==4 goto opt4

if %appchoice%==5 goto torch


goto reset


:opt1



goto dolaunch


:opt2



goto dolaunch


:opt3




goto dolaunch


:opt4



goto dolaunch



:: App Launch Strings

:: 
::set appname=

:: AdFree
::set appname=com.bigtincan.android.adfree/.FreeMe

:: Barcode Scanner
::set appname=com.google.zxing.client.android/.CaptureActivity

:: Blackmart
::set appname=org.blackmart.market/.MainScreen

:: Browser (Stock)
::set appname=set appname=com.android.browser/.BrowserActivity

:: Calculator
::set appname=com.android.calculator2/.Calculator

:: Calender
::set appname==com.android.calendar/.AllInOneActivity

:: Camera
::set appname=com.android.gallery3d/com.android.camera.CameraLauncher

:: Clock
::set appname=com.android.deskclock/.DeskClock

:: Downloads
::set appname=com.android.providers.downloads.ui/.DownloadList

:: Gallery
::set appname=com.android.gallery3d/.app.Gallery

:: Dialer
::set appname=com.android.contacts/.activities.DialtactsActivity

:: Email
::set appname=com.android.email/.activity.Welcome

:: Facebook
::set appname=com.facebook.katana/.LoginActivity

:: Google+
::set appname=com.google.android.apps.plus/.phone.HomeActivity

:: Gmail
::set appname=com.google.android.gm/.ConversationListActivityGmail

:: GooManager
::set appname=com.s0up.goomanager/.GooManagerActivity

:: Google Talk
::set appname=com.google.android.talk/.SigningInActivity

:: Google Voice
::set appname=com.google.android.apps.googlevoice/.SplashActivity

:: Lucky Patcher
::set appname=com.chelpus.lackypatch/.patchActivity

:: Market (Play Store)
::set appname=set appname=com.android.vending/.AssetBrowserActivity

:: Messaging
::set appname=com.android.mms/.ui.ConversationList

:: Movie Studio
::set appname=com.android.videoeditor/.ProjectsActivity

:: Mozilla Firefox
::set appname=org.mozilla.firefox/.App

:: News & Weather
::set appname=com.google.android.apps.genie.geniewidget/.activities.NewsActivity

:: People (Contacts)
::set appname=com.android.contacts/.activities.PeopleActivity

:: Quick Boot
::set appname=com.siriusapplications.quickboot/.BootActivity

:: Settings
::set appname=set appname=com.android.settings/.Settings

:: SuperSU
::set appname=eu.chainfire.supersu/.MainActivity

:: Root Explorer
::set appname=com.speedsoftware.rootexplorer/.RootExplorer

:: Terminal Emulator (Jackpal)
::set appname=jackpal.androidterm/.Term

:: Titanium Backup
::set appname=com.keramidas.TitaniumBackup/.MainActivity

:torch
:: Torch
set appname=net.cactii.flash2/.MainActivity

%applaunch% %appname%

call "scripts\shell\touch\click_single.cmd"

goto reset



:: Trebuchet (CM9/10 Launcher)
::set appname=set appname=com.cyanogenmod.trebuchet/.Launcher

:: Voice Dialer
::set appname=com.android.voicedialer/.VoiceDialerActivity

:: Voice Search
::set appname=com.google.android.googlequicksearchbox/.SearchActivity

:: Youtube
::set appname=com.google.android.youtube/.app.honeycomb.Shell$HomeActivity





::%adb% shell am start -n com.package.name/com.package.name.ActivityName

::%adb% shell am start -n com.package.name/com.package.name.ActivityName

::%adb% shell am start -a com.example.ACTION_NAME -n com.package.name/com.package.name.ActivityName

::%adb% shell am start -n com.package.name/.ActivityName

::%adb% shell am start -a android.intent.action.MAIN -n com.android.settings/.Settings

::%adb% shell am start -a android.intent.action.MAIN -n com.android.browser/.BrowserActivity

::%adb% shell am start -a android.intent.action.VIEW -d   "file:///mnt/sdcard/DCIM/Camera/test.3gp" -t "video/*" 

::%adb% shell am start -a android.intent.action.VIEW -d "file:///mnt/sdcard/DCIM/Camera/test.3gp" -t "video/*" -n "com.alensw.PicFolder/.PlayerActivity"



:dolaunch

%applaunch% %appname%

goto reset



:end

