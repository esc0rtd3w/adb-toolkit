@echo off

title Android ADB Toolkit                                        -[ adbtoolkit.com ]-



:reset

:set_var

:: Temp fix to install latest version
goto dotnet40


:: .NET Installations


:dotnet10
set dotnet_install=dotnetfx10.exe" /q:a /c:”install /l /q”
set dotnet_file=dotnetfx10.exe

%showbanner%
%cocolor% 0d
echo.
echo.
echo Downloading %dotnet_file%....
echo.
echo.
goto getdotnet

:dotnet11
set dotnet_install=dotnetfx11.exe" /q:a /c:”install /l /q”
set dotnet_file=dotnetfx11.exe

%showbanner%
%cocolor% 0d
echo.
echo.
echo Downloading %dotnet_file%....
echo.
echo.
goto getdotnet

:dotnet20
set dotnet_install=dotnetfx20.exe" /q:a /c:”install /l /q”
set dotnet_file=dotnetfx20.exe

%showbanner%
%cocolor% 0d
echo.
echo.
echo Downloading %dotnet_file%....
echo.
echo.
goto getdotnet

:dotnet30
set dotnet_install=“dotnetfx30.exe" /q /norestart
set dotnet_file=dotnetfx30.exe

%showbanner%
%cocolor% 0d
echo.
echo.
echo Downloading %dotnet_file%....
echo.
echo.
goto getdotnet

:dotnet35
set dotnet_install=dotnetfx35.exe" /q /norestart
set dotnet_file=dotnetfx35.exe

%showbanner%
%cocolor% 0d
echo.
echo.
echo Downloading %dotnet_file%....
echo.
echo.
goto getdotnet

:dotnet40
set dotnet_install=dotnetfx40.exe" /q /norestart
set dotnet_file=dotnetfx40.exe

%showbanner%
%cocolor% 0d
echo.
echo.
echo Downloading %dotnet_file%....
echo.
echo.
goto getdotnet

:dotnet45
set dotnet_install=dotnetfx45.exe" /q /norestart
set dotnet_file=dotnetfx45.exe

goto getdotnet



:getdotnet

if exist "%systemroot%\Microsoft.NET\Framework\v4.0.30319\System.Core.dll" goto end


:: Not Found Prompt
%showbanner%
%cocolor% 0c
echo.
echo.
echo Microsoft.NET 4.x or higher NOT FOUND!
echo.
echo.
echo Would you like to download and install this automatically? [Y/N]
echo.
echo.
echo.
%cocolor% 03
echo NOTE: Without this, you WILL NOT be able to use the GUI front-end or other
echo graphical components that are tied to this tool.
%cocolor% 0b
echo.
echo.
echo.
echo Type either Y or N or just press ENTER to continue....
echo.
echo.

%cocolor% 0e

set /p action=


if %action%==Y goto dldotnet
if %action%==y goto dldotnet


if %action%==N goto end
if %action%==n goto end

if %action%==99 goto end




:: Reject any number higher than the highest menu item
if %action% gtr 0 goto getdotnet

goto end


:dldotnet
%showbanner%
%cocolor% 0e
echo.
echo.
echo Downloading %dotnet_file%....
echo.
echo.
echo This will take approx 2 - 5 minutes or more, depending on connection speed.
echo.
echo.

if not exist "%dl_temp%" md "%dl_temp%"

%cocolor% 0d

echo -------------------------------------------------------------------------------
set dotnetget=%wget% -O "%dl_temp%\%dotnet_file%" %dl_server%/apps/windows/dotNET/%dotnet_file%
%dotnetget%
echo -------------------------------------------------------------------------------

goto finish


:finish
%showbanner%
%cocolor% 0e
echo.
echo.
echo Installing %dotnet_file%....
echo.
echo.
echo This will take approx 5 - 20 minutes or more, depending on computer speed.
echo.
echo.

%cocolor% 0d

echo -------------------------------------------------------------------------------
:: Using only ONE (1) QUOTE on LEFT SIDE because of the parameters following install
"%dl_temp%\%dotnet_install%
echo -------------------------------------------------------------------------------



:end


