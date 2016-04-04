::Source - http://community.spiceworks.com/scripts/show/559-batch-progress-bar

@echo off

setlocal enabledelayedexpansion
echo.
echo.
set i=10
(Set /P j=DoingStuff) < NUL
ECHO.
(Set /P j=......................................) < NUL
:Start
call :DisplayProgressBar %i%

%load_current_task%


set /a i = i + 1
if /i %i% leq 100 goto start
ECHO.
ECHO.
(Set /P j=Success!) < NUL
ECHO.
PAUSE>NUL
goto :EOF

:DisplayProgressBar
(Set /P j=.) < NUL
::title %1%% Completed
pause >nul
::exit /b
endlocal