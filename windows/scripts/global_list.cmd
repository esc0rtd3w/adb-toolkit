@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo GLOBAL VARIABLES LISTING [DEBUG/TESTING PURPOSES ONLY!!!]
echo.
echo -------------------------------------------------------------------------------
echo PC Variables
echo -------------------------------------------------------------------------------
echo.
echo.

echo ADB Toolkit Release Version: %releasever%

echo.

echo Current OS: %os_text%
echo Current Architecture: %architecture%

echo.

echo Dependencies Root Path: %dependencyroot%
echo Default Drivers Path: %drvpath%
echo Default Device Rooting Path: %devpath%

echo.

echo Host Server: %dl_server%
echo Default Download Path: %dl_path%

echo.

echo Current Action: %action%
echo Current Option: %option%

echo.

echo Back Flag: %backflag%

echo.

echo Read-Only Flag: %readonly%


echo.
echo.
echo.
echo -------------------------------------------------------------------------------
echo Device Variables
echo -------------------------------------------------------------------------------

echo.

echo -------------------------------------------------------------------------------
echo Info Bar Stats
echo.
echo State: %autostate%
echo Device: %ro_product_board%
echo Model: %ro_product_model%
echo Serial Number: %autoserial%
echo -------------------------------------------------------------------------------

echo.
echo.

echo -------------------------------------------------------------------------------
echo build.prop Variables
echo.
echo ro.build.id: %ro_build_id%
echo ro.build.display.id: %ro_build_display_id%
echo ro.build.version.incremental: %ro_build_version_incremental%
echo ro.build.version.sdk: %ro_build_version_sdk%
echo ro.build.version.codename: %ro_build_version_codename%
echo ro.build.version.release: %ro_build_version_release%
echo ro.build.date: %ro_build_date%
echo -------------------------------------------------------------------------------

echo.
echo.

echo -------------------------------------------------------------------------------
echo Misc Device Variables
echo.
echo Remount /system for RW Access Method 1: %device_mount_rw1%
echo.
echo Remount /system for RW Access Method 2: %device_mount_rw2%
echo.
echo Remount /system for RO Access Method 1: %device_mount_ro1%
echo.
echo Remount /system for RO Access Method 2: %device_mount_ro2%
echo -------------------------------------------------------------------------------

echo.
echo.
echo.

echo Scroll up to see all loaded variables.

echo.
echo.

echo Press a key to continue....
pause>nul


:end


