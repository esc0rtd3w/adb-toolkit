@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:: Removing Temp Text File for Packages
del /f /q "%temp%\adbtk-list-packages.tmp">nul


:: Removing Temp Text File for build.prop editor
del /f /q "%temp%\adbtk-edit-build-dot-prop.tmp">nul

if exist "%dl_temp%" rd /s /q "%dl_temp%"

if exist "%dl_temp%\build_prop" rd /s /q "%dl_temp%\build_prop"

:end

