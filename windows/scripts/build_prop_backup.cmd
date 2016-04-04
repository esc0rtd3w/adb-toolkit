@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset




if not exist "%dl_backups%\%autoserial%" md "%dl_backups%\%autoserial%"

if not exist "%dl_backups%\%autoserial%\build.prop" goto pullprop

goto end


:pullprop


%adb% pull %buildprop% "%dl_backups%\%autoserial%"


if exist "%dl_backups%\N" rd /s /q "%dl_backups%\N"


goto end


:end


