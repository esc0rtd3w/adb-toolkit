:: ==========================================================================================================================
:: ====================================== drv_del.cmd ====================================================================
:: ==========================================================================================================================
TITLE drv_del.cmd - Deleting FileRepository folders in PE3 - Wait ....
@ECHO OFF
CLS

SETLOCAL ENABLEEXTENSIONS
SETLOCAL ENABLEDELAYEDEXPANSION

ECHO.
ECHO  Deleting added FileRepository folders in PE3 to free drive X:\ - Wait ....
ECHO.
dir %systemroot%\system32\DriverStore\FileRepository /a:ad /b >dellist.txt
for /F "usebackq delims=" %%A in ("dellist.txt") do (
   RD /S /q %systemroot%\system32\DriverStore\FileRepository\%%A
)
DEL dellist.txt
ECHO.
ECHO  Deleting added FileRepository folders has finished - OK
ECHO.

:: pause

exit