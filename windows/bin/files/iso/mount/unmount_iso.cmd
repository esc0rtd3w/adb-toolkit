@echo off

:: Modified for use with ADB Toolkit!


net stop imdsksvc
net stop awealloc
net stop imdisk

start rundll32.exe setupapi.dll,InstallHinfSection DefaultUninstall 132 %SystemRoot%\inf\imdisk.inf
