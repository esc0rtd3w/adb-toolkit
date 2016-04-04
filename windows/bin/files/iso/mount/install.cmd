if exist "%SystemRoot%\system32\imdisk.exe" ( "%SystemRoot%\system32\imdisk.exe" -l | find "Device" ) && (
  if not "%IMDISK_SILENT_SETUP%" == "1" (
    msgbox "Please dismount all existing ImDisk virtual disks before upgrade!" 16 "ImDisk Virtual Disk Driver setup"
    start control imdisk.cpl
  )
  goto :eof
)

net stop imdsksvc
net stop awealloc
net stop imdisk

rundll32 setupapi.dll,InstallHinfSection DefaultInstall 132 .\imdisk.inf

if errorlevel 1 (
  if not "%IMDISK_SILENT_SETUP%" == "1" msgbox "Setup failed. Please try to reboot the computer and then try to run the setup package again." 16 "ImDisk Virtual Disk Driver setup"
  goto :eof
)

net start imdsksvc
net start awealloc
net start imdisk

if not "%IMDISK_SILENT_SETUP%" == "1" msgbox "Setup finished successfully. Open ImDisk Virtual Disk Driver applet in Control Panel or use imdisk command line to manage your virtual disks!" 0 "ImDisk Virtual Disk Driver setup"

