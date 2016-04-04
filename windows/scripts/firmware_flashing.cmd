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
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Fastboot Commands (Flash Boot, Recovery, Erase Cache, OEM Lock/Unlock)
echo.
echo 2) Heimdall Suite
echo.
echo 3) Odin Collection (For flashing Samsung, possibly others)
echo.
echo 4) MobileODIN Lite (Including Downloadable FlashKernels Available as DLC)
echo.
echo 5) RSDLite (For flashing Motorola, possibly others)
echo.
echo 6) DFS
echo.
echo 7) CDMA Workshop
echo.
echo 8) QPST
echo.
echo 9) QXDM
echo.
echo 10) Basic Flasher
echo.
echo 11) RKTools (RK29 Tool, used for RockChip devices, possibly others)
echo.
echo 12) RevSkills
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto end
if %action%==r goto end

:: Check Next Page flag
if %action%==N goto main2
if %action%==n goto main2

:: Reject any number higher than the highest menu item
if %action% gtr 12 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

if %action%==7 goto opt7

if %action%==8 goto opt8

if %action%==9 goto opt9

if %action%==10 goto opt10

if %action%==11 goto opt11

if %action%==12 goto opt12

goto reset



:main2
set action=99
%showbanner%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 13) BitPim
echo.
echo 14) SP Flash Tool
echo.
echo 15) Pheonix Suite
echo.
echo 16) MiPhone
echo.
echo 17) DM Tool
echo.
echo 18) Houdini
echo.
echo 19) NSPro
echo.
echo 20) DC Unlocker
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto main
if %action%==r goto main

:: Reject any number lower than the lowest menu item
if %action% lss 13 goto main2

:: Reject any number higher than the highest menu item
if %action% gtr 20 goto main2

if %action%==13 goto opt13

if %action%==14 goto opt14

if %action%==15 goto opt15

if %action%==16 goto opt16

if %action%==17 goto opt17

if %action%==18 goto opt18

if %action%==19 goto opt19

if %action%==20 goto opt20

goto reset



:opt1

call "scripts\firmware_flashing\fastboot.cmd"

goto reset


:opt2

call "scripts\firmware_flashing\heimdall.cmd"

goto reset


:opt3

call "scripts\firmware_flashing\odin.cmd"

goto reset


:opt4

call "scripts\firmware_flashing\mobileodin.cmd"

goto reset


:opt5

call "scripts\firmware_flashing\rsdlite.cmd"

goto reset


:opt6

call "scripts\firmware_flashing\dfs.cmd"

goto reset


:opt7

call "scripts\firmware_flashing\cdma_workshop.cmd"

goto reset


:opt8

call "scripts\firmware_flashing\qpst.cmd"

goto reset


:opt9

call "scripts\firmware_flashing\qxdm.cmd"

goto reset


:opt10

call "scripts\firmware_flashing\basic_flasher.cmd"

goto reset


:opt11

call "scripts\firmware_flashing\rktools.cmd"

goto reset


:opt12

call "scripts\firmware_flashing\revskills.cmd"

goto reset


:opt13

call "scripts\firmware_flashing\bitpim.cmd"

goto reset


:opt14

call "scripts\firmware_flashing\sp_flash_tool.cmd"

goto reset


:opt15

call "scripts\firmware_flashing\pheonix_suite.cmd"

goto reset


:opt16

call "scripts\firmware_flashing\miphone.cmd"

goto reset


:opt17

call "scripts\firmware_flashing\dm_tool.cmd"

goto reset


:opt18

call "scripts\firmware_flashing\houdini.cmd"

goto reset


:opt19

call "scripts\firmware_flashing\nspro.cmd"

goto reset


:opt20

call "scripts\firmware_flashing\dc_unlocker.cmd"

goto reset


:end


