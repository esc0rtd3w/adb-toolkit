@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-

color 0e


:reset

:set_var


:main
%showbanner%
echo.
echo.
echo Preparing to restart phone in Bootloader mode....
echo.
echo.
echo Press CTRL+C to CANCEL!
echo.
echo.
echo.

%wait10% >nul

%adb% reboot bootloader



%showbanner%
echo.
echo.
echo Press a key when bootloader mode is on (white screen)....
echo.
echo.
echo.
pause>nul



%showbanner%
echo.
echo.
echo Writing new CID number....
echo.
echo.
echo.

%fastboot% oem writecid 11111111

%wait5% >nul

%adb% reboot bootloader



%showbanner%
echo.
echo.
echo Comfirm that CID is: 11111111
echo.
echo.
echo If the CID is not "11111111", then restart this tool!
echo.
echo.
echo.

%fastboot% getvar cid

%wait10% >nul


%showbanner%
echo.
echo.
echo Rebooting now....
echo.
echo.
echo.

%fastboot% reboot


:end



