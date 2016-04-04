
TITLE dpfolder.cmd - Install DriverPacks from selected Folder
@ECHO OFF
CLS

SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

SET TP=%~dp0
SET TP=%TP:~0,-1%
cd /d "%TP%"
SET workdrv=!TP:~0,2!

chcp 437 >nul
:: mode con cols=105

ECHO.
ECHO  =============================================================================
ECHO  Install DriverPacks from selected Folder - Date = %DATE% %TIME:~0,8%
ECHO.
ECHO  Program Path = %TP%
ECHO.
ECHO  Select Folder with DriverPacks and for Install using dpinst.exe
ECHO.

set src_ok=

FOR /F "tokens=*" %%A IN ('CSCRIPT.EXE //NoLogo FolderSel.vbs') DO SET src_ok=%%A

IF "!src_ok!" == "" goto _end_quit

IF "!src_ok:~1,1!" NEQ ":" (
  echo.
  echo  ***** Selected Drive is NOT Valid *****
  echo.
  pause
  goto _end_quit
)

:: IF "!src_ok:~-1,1!"=="\" SET src_ok=!src_ok:~0,2!
echo.
echo  Selected DriverPacks Folder = !src_ok!

dpinst.exe /path !src_ok!

:_end_quit
IF "%OS%"=="Windows_NT" ENDLOCAL

:_end
ECHO.
ECHO  End Program - dpfolder.cmd will be Closed - Date = %DATE% %TIME:~0,8%
ECHO  ============================================================================= 
ECHO.
pause
EXIT

