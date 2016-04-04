@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
::none

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Enter the name of the app and press ENTER:
echo.
echo.
echo Example: vlc media player
echo.
echo.
echo.

set /p appname=
echo.

:: Temp fix for browsers. Using IE as default.
goto skpchoose

::goto browser


:browser
%showbanner%
echo.
echo.
echo Detected Browsers:
echo.
echo.
echo 1) Chrome [%chromestatus%]
echo.
echo 2) Internet Explorer [%iestatus%]
echo.
echo 3) Firefox [%firefoxstatus%]
echo.
echo 4) Opera [%operastatus%]
echo.
echo 5) Safari [%safaristatus%]
echo.
echo.
echo.
echo Choose the browser to launch and press ENTER:
echo.

set /p launch=
echo.
echo.

:chkmain
:: Check for what input was entered to not allow selecting a browser that is not available

if %launch%==1 goto chkchrome
if %launch%==2 goto chkie
if %launch%==3 goto chkff
if %launch%==4 goto chkopera
if %launch%==5 goto chksafari

goto pick


:chkchrome

if %chrome%==0 goto browser
goto chkmain


:chkie

if %ie%==0 set goto browser
goto chkmain

:chkff

if %firefox%==0 goto browser
goto chkmain

:chkopera

if %opera%==0 goto browser
goto chkmain

:chksafari

if %safari%==0 goto browser
goto chkmain



:pick

if %launch%==1 set browserpath=%chromepath%
if %launch%==2 set browserpath=%iepath%
if %launch%==3 set browserpath=%firefoxpath%
if %launch%==4 set browserpath=%operapath%
if %launch%==5 set browserpath=%safaripath%


start %browserpath% "%searchengine%%appname% apk"


goto end


:skpchoose
start "%ProgramFiles%\Internet Explorer\iexplore.exe" "%searchengine%%appname% apk"
goto end


:end


