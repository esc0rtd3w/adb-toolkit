:: ==========================================================================================================================
:: ====================================== driver_fix.cmd ====================================================================
:: ==========================================================================================================================
TITLE driver_fix.cmd - Install of Drivers in PE3 - Wait ....
@ECHO OFF
CLS

SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

SET /a timer=5

:_choice

cls
echo.
echo  %timer% sec to drivers installation
echo.
set /a timer=!timer!-1
IF !timer! EQU 0 GOTO _install
CHOICE /c !timer!zxc567890  /n /t 1 /d !timer! /m ">   press Z,X or C to cancel"
IF %ERRORLEVEL% GTR 1 GOTO _end
IF %ERRORLEVEL% EQU 1 GOTO _choice

:_install

ECHO.
ECHO  Install of Drivers in PE3 - Wait ....
ECHO.

PnPutil.exe -i -a X:\Windows\inf\hal.inf
PnPutil.exe -i -a X:\Windows\inf\cpu.inf
pnputil.exe -i -a X:\Windows\inf\battery.inf

ECHO.
ECHO  Install of DriverPacks using drv\x86\dpinst.exe - Wait 15 sec - 5 min ....
ECHO.

"%ProgramFiles%\wall-cmd\Wallcmd.exe" /AutoIt3ExecuteScript "drv_find.au3"

ECHO.
ECHO  Install of Network Drivers in PE3 - Wait ....
ECHO.

for %%i in (X:\Windows\inf\oem*.inf) do drvload.exe %%i
for %%i in (X:\Windows\inf\net*.inf) do drvload.exe %%i

ECHO.
ECHO  Install RAS adapter and AsyncMac in PE3  for USB Modem - Wait ....
ECHO.

rundll32.exe streamci,StreamingDeviceSetup {eeab7790-c514-11d1-b42b-00805fc1270e},asyncmac,{ad498944-762f-11d0-8dcb-00c04fc3358c},X:\Windows\INF\netrasa.inf,Ndis-Mp-AsyncMac

ECHO.
ECHO  Install of USB Drivers in PE3 - Wait ....
ECHO.

drvload.exe X:\Windows\inf\usb.inf
drvload.exe X:\Windows\inf\usbstor.inf
drvload.exe X:\Windows\inf\msports.inf

ECHO.
ECHO  Start Broadband - Wait ...
ECHO.

cmd /c "netcfg.exe -e -c p -i MS_NDISWAN && netcfg.exe -e -c s -i MS_RASMAN && netcfg.exe -e -c p -i MS_PPPOE"

ECHO.
ECHO  Start tcpipreg and ms_ndiswanip - Wait ...
ECHO.

net start tcpipreg
netcfg.exe -e -c p -i ms_ndiswanip

ECHO.
ECHO  Start of WLAN Service - Wait ...
ECHO.

NET START Eaphost
NET START dot3svc

:: drvload.exe X:\Windows\inf\netvwifimp.inf
:: drvload.exe X:\Windows\inf\netvwififlt.inf

netcfg.exe -c s -i ms_vwifi

netcfg.exe -c s -i ms_nativewifip

NET START Wlansvc

ECHO.
ECHO  Install of HDAUDIO Driver - Wait ...
ECHO.

PnPutil.exe -i -a X:\Windows\inf\hdaudio.inf

:: SET speak_guid=

:: FOR /F "tokens=1-9 delims=\" %%G IN ('reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render') DO (
::   SET temp_guid=%%O
::   IF "!temp_guid!" NEQ "" (
::     FOR /F "tokens=1,2,* delims= " %%A IN ('reg query HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render\!temp_guid!\Properties') DO (
::       SET p_3=%%C
::       IF "!p_3!"=="Speakers" (
::         SET speak_guid=!temp_guid!
::         ECHO.
::         ECHO speak_guid = !speak_guid!    Device = !p_3!
::       )
::         IF "!p_3!"=="Digital Audio (S/PDIF)" (
::         SET spdif_guid=!temp_guid!
::         ECHO.
::         ECHO spdif_guid = !spdif_guid!    Device = !p_3!
::         reg delete HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\MMDevices\Audio\Render\!temp_guid! /f
::       )
::     )
::   )
:: )

ECHO.

:: Only in case of Media version _ Install all drivers with pnp_fix.cmd - takes about 5 minutes


::  start "pecmd.exe Install Drivers from host - wait ..." /wait "%SystemRoot%\System32\win7drv.cmd"

:: "%ProgramFiles%\wall-cmd\Wallcmd.exe" /AutoIt3ExecuteScript "dpinst_DriverStore.au3"

::  ECHO.
::  ECHO  Use pecmd.exe for Drivers from PE-Tools or Host DriverStore - Wait 40 sec ....
::  ECHO.
::  "%ProgramFiles%\wall-cmd\Wallcmd.exe" /AutoIt3ExecuteScript "pecmd_DriverStore.au3"

IF EXIST "X:\Program Files\Windows Media Player\wmplayer.exe" (
  ECHO.
  ECHO  Run quiet and minimized pnp_fix.cmd to Install some PNP Drivers
  ECHO.
  start "PNP Driver Fix PE3 - Wait ...." /min "%SystemRoot%\System32\pnp_fix.cmd"
) ELSE (
  ECHO.
  ECHO.
  ECHO  Deleting added FileRepository folders in PE3 to free drive X:\ - Wait ....
  ECHO.
  start "Deleting added FileRepository - Wait ...." /wait /min "%SystemRoot%\System32\drv_del.cmd"
)

IF EXIST %SystemRoot%\System32\SxS_7PE_SFX.exe (
%SystemRoot%\System32\SxS_7PE_SFX.exe
)
ECHO.
ECHO  Install of Drivers in PE3 has finished OK
ECHO.

:_end

EXIT