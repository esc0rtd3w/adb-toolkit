@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:: Not Currently Working Re-Direct
::call "scripts\unavailable.cmd"
::goto end

:set_var
set action=99

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.




setlocal ENABLEDELAYEDEXPANSION

set listCredits=readme\3rdparty.txt
for /f "tokens=1 delims=\" %%a in (%listCredits%) do (
    set /a listCredits=!listCredits! + 1
    set var!listCredits!=%%a
	echo "%pf%\%%a"
	
	if !listCredits!==200 (
	
	echo.
	echo Press ENTER To Continue....
	echo.
	pause>nul
	)
	
)

endlocal

pause>nul


:end


