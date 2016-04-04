@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset


:set_var
set first_character=100000

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
echo Please enter ONLY the FIRST LETTER or NUMBER of your game and Press ENTER:
echo.
echo.
%cocolor% 0b
echo @) Return To Previous Menu
%cocolor% 0e
echo.

set /p first_character=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %first_character%==@ goto end
if %first_character%==@ goto end


call "scripts\gaming_tools\game_database\%first_character%.cmd"

:: Reject any number higher than the highest menu item
if %first_character% gtr 99999 goto reset

goto reset



:opt0

echo 0&pause

goto reset


:opt1

echo 1&pause

goto reset


:opt2

echo 2&pause

goto reset


:opt3



goto reset


:opt4



goto reset


:opt5



goto reset


:opt6



goto reset


:opt7



goto reset


:opt8



goto reset


:opt9



goto reset


:opta

echo a&pause

goto reset


:optb

echo b&pause

goto reset


:optc

echo c&pause

goto reset


:optd



goto reset


:opte



goto reset


:optf



goto reset


:optg



goto reset


:opth



goto reset


:opti



goto reset


:optj



goto reset


:optk



goto reset


:optl



goto reset


:optm



goto reset


:optn



goto reset


:opto



goto reset


:optp



goto reset


:optq



goto reset


:optr



goto reset


:opts



goto reset


:optt



goto reset


:optu



goto reset


:optv



goto reset


:optw



goto reset


:optx



goto reset


:opty



goto reset


:optz



goto reset


:end


