@echo off

:: Modified for use with ADB Toolkit!


net stop imdsksvc
net stop awealloc
net stop imdisk

rundll32 setupapi.dll,InstallHinfSection DefaultInstall 132 .\imdisk.inf

net start imdsksvc
net start awealloc
net start imdisk
