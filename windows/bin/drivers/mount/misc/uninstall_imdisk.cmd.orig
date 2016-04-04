@echo off

title ImDisk Virtual Disk Driver Uninstall

echo ImDisk Virtual Disk Driver Uninstall

if exist "%SystemRoot%\system32\imdisk.exe" ( "%SystemRoot%\system32\imdisk.exe" -l | find "Device" ) && (
  if not "%IMDISK_SILENT_SETUP%" == "1" (
    msgbox "Please dismount all existing ImDisk virtual disks before uninstall!" 16 "ImDisk Virtual Disk Driver setup"
    start control imdisk.cpl
  )
  goto :eof
)

net stop imdsksvc
net stop awealloc
net stop imdisk

start rundll32.exe setupapi.dll,InstallHinfSection DefaultUninstall 132 %SystemRoot%\inf\imdisk.inf
