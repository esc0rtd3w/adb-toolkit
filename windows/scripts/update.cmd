@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set script_version=1.0.0


call "scripts\unavailable.cmd"
goto end


:main
%showbanner%
echo.
echo.
echo This option is currently UNAVAILABLE!
echo.
echo.
echo Please look for it in a future update.
echo.
echo.

::%msgbox% "The NFO file lied, this option is still under construction......apologies :)" "NOT AVAILABLE" OK


::%update_path_bin%\

::%update_path_scripts%\

goto end



:end


