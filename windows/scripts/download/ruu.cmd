@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset


:set_var
set action=99

set dl_path=c:\adbtk\ruu


::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Downloading %zipname%....
echo.
echo.


if not exist "%dl_path%" md "%dl_path%"

%cocolor% 0a

set dl_get=%wget% -O "%dl_path%\%zipname%" "%dl_server%/roms/stock/htc/incredible2/2.3.3/%zipname%"


%dl_get%


::goto reset


:end


