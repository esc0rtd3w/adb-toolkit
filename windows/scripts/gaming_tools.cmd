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
echo 1) Backup Game Saves
echo.
echo 2) Restore Game Saves
echo.
echo 3) Game Save Editing
echo.
echo 4) Preset Cheats / Hacks
echo.
echo 5) File Patching
echo.
echo 6) Misc Tools
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto end
if %action%==r goto end


:: Reject any number higher than the highest menu item
if %action% gtr 6 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

goto reset


:opt1

call "scripts\gaming_tools\backup_game_saves.cmd"

goto reset


:opt2

call "scripts\gaming_tools\restore_game_saves.cmd"

goto reset


:opt3

call "scripts\gaming_tools\game_save_editing.cmd"

goto reset


:opt4

call "scripts\gaming_tools\preset_cheats.cmd"

goto reset


:opt5

call "scripts\gaming_tools\file_patching_tools.cmd"

goto reset


:opt6

call "scripts\gaming_tools\misc_tools.cmd"

goto reset


:end


