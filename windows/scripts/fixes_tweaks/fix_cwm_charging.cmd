@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-

color 0e


:reset

:set_var



:main
%showbanner%
echo.
echo.
echo Fixing ClockworkMod Charging Issues....
echo.
echo Status should say: Charging 
echo.
echo.
echo Press CTRL+C to CANCEL!
echo.
echo.
echo.

%adb% shell cat /sys/devices/platform/htc_battery/power_supply/battery/status

%wait10% >nul


:end

