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
echo Running Revolutionary to obtain S-OFF....
echo.
echo.
echo The revolutionary.io website will now open.
echo.
echo Please follow these instructions below:
echo.
echo.
echo 1) Click on the "Download for Windows" link, click CANCEL on file dialog.
echo.
echo 2) "Windows" should be selected for "Your Operating System", if not, select it.
echo.
echo 3) For "Your Device:", select "%ro_product_model%"
echo.
echo 4) For "HBOOT Version:", select your HBOOT Version.
echo.
echo 5) Your serial # has been copied. Paste it into the form on webpage.
echo.
echo 6) Click "Generate Key".
echo.
echo 7) Copy the BETA KEY and paste it into this window, then press ENTER.
echo.
echo.
echo In Revolutionary, be sure to select "Y" when prompted to flash custom recovery!
echo.

%cocolor% 0d

:: Close any other open miniweb windows
%nircmd% win close ititle "ADBTK Mini Browser"

:: Launch website mini loader
start "%binstub%" "%miniweb%" http://revolutionary.io

:: Copy serial number to clipboard
echo %autoserial%| sfk toclip

goto revstart

:revstart
%adbstop%
%revolutionary%

goto soffverify


:soffverify
::if %soffstatus%==1 goto finish
set revfail=n
%showbanner%
echo.
echo.
echo Did you SUCCEED in gaining S-OFF and installing a custom recovery? [Y/N]
echo.

set /p revfail=


:: Reject any number higher than the highest menu item
::if %revfail% gtr 0 goto soff


if %revfail%==Y goto finish
if %revfail%==y goto finish

if %revfail%==N goto soff
if %revfail%==n goto soff


goto end



:finish
:: Close any other open miniweb windows
%nircmd% win close ititle "ADBTK Mini Browser"

%showbanner%
echo.
echo.
echo Your device is now S-OFF, and custom recovery installed.
echo.
echo Now you can copy a rom and gapps to your SD Card and boot into recovery.
echo.
echo.
echo Finished! Press any key to exit....
echo.
pause>nul


goto end



:end



