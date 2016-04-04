@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set action=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
"bin\rooting\devices\multi\DooMLoRD_v1_Xperia-2011-ICS-ROOT\runme.bat"
goto reset




:end


