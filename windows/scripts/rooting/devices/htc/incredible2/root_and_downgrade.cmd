@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

:set_var
set action=99

::call "scripts\get_info_bar.cmd"


:pushtaco
%showbanner%
echo.
echo.
echo Pushing %taco%....
%adb% push "%exploitpath%\%taco%" %dev_local%/%taco%
echo step 1 done
echo.
echo.
echo Press any key to continue to next step....
echo.
pause>nul


:setpermstaco
%showbanner%
echo.
echo.
echo Setting Permissions on %taco%....
%adb% shell chmod 755 %dev_local%/%taco%
echo step 2 done
echo.
echo.
echo Press any key to continue to next step....
echo.
pause>nul


:tacosetup
%showbanner%
echo.
echo.
echo Rebooting into Recovery....
echo.
echo When you see the red exclamation mark, hit Volume Up and Power
echo to get into the stock recovery, once in stock recovery, HOLD
echo Volume Up, Volume Down, and Power to force reboot the phone.
echo.
%adb% shell %dev_local%/%taco% --setup
echo step 3 done
echo.
echo.
echo Press any key when phone has been rebooted...
echo.
pause>nul


:tacoroot
%showbanner%
echo.
echo.
echo Running Exploit....
%adb% shell %dev_local%/%taco% --root
echo step 4 done
echo.
echo.
echo Booting into Rooted ADB Mode...
echo.
echo.
echo Press any key when phone has been rebooted...
echo.
pause>nul


:pushmisc
%showbanner%
echo.
echo.
echo Pushing misc_version....
%adb% push misc_version %dev_temp%/misc_version
echo step 5 done
echo.
echo.
echo Press any key to continue to next step....
echo.
pause>nul


:setpermsmisc
%showbanner%
echo.
echo.
echo Setting Permissions on misc_version....
%adb% shell chmod 777 %dev_temp%/misc_version
echo step 6 done
echo.
echo.
echo Press any key to continue to next step....
echo.
pause>nul


:setversion
%showbanner%
echo.
echo.
echo Setting Version Number to 2.18.605.3....
%adb% shell sh -c '%dev_temp%/misc_version -s 2.18.605.3'
echo step 7 done
echo.
echo.
echo Press any key to continue to next step....
echo.
pause>nul


:unroot
%showbanner%
echo.
echo.
echo Unrooting Device....
%adb% shell %dev_local%/%taco% --undo
echo step 8 done
echo.
echo.
echo Press any key to continue to next step....
echo.
pause>nul


:boot2bl
%showbanner%
echo.
echo.
echo Rebooting to Bootloader....
%adb% reboot bootloader
echo step 9 done
echo.
echo.
echo Press any key to continue to next step....
echo.
pause>nul


:boot2ruu
%showbanner%
echo.
echo.
echo Rebooting to RUU....
%fastboot% oem rebootRUU
echo step 10 done
echo.
echo.
echo Press any key to continue to next step....
echo.
pause>nul


:erasecache
%showbanner%
echo.
echo.
echo Erasing Cache....
%fastboot% erase cache
echo step 11 done
echo.
echo.
echo Press any key to continue to next step....
echo.
pause>nul


:dlruu
%showbanner%
echo.
echo.
echo Downloading RUU ZIP....
echo.
echo RUU_Vivo_W_Gingerbread_S_VERIZON_WWE_2.18.605.3_Radio_1.09.01.0622_NV_VZW1.92_release_199487_signed.zip
echo.
echo.
set zipname=RUU_Vivo_W_Gingerbread_S_VERIZON_WWE_2.18.605.3_Radio_1.09.01.0622_NV_VZW1.92_release_199487_signed.zip
call "scripts\download\ruu.cmd"
echo step 12 done
echo.
echo.
echo Press any key to start flashing the newly downloaded file....
echo.
pause>nul


:flashruu
%showbanner%
echo.
echo.
echo Flashing RUU ZIP....
%fastboot% flash zip "%dl_path%\%zipname%"
echo step 13 done
echo.
echo.
echo Press any key to continue to next step....
echo.
pause>nul


:reboot
%showbanner%
echo.
echo.
echo Rebooting into New Rom....
%fastboot% reboot
echo step 14 done
echo.
echo.
echo Once your device has rebooted, press a key to proceed to get S-OFF....
echo.
pause>nul


:soff
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
echo 3) For "Your Device:", select "HTC Droid Incredible 2"
echo.
echo 4) For "HBOOT Version:", select "0.97.0000"
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
echo Your device is now on 2.3.3 GB, rooted, S-OFF, and custom recovery installed.
echo.
echo Now you can copy a rom and gapps to your SD Card and boot into recovery.
echo.
echo.
echo Finished! Press any key to exit....
echo.
pause>nul



:end

