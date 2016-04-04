@echo off


cls

echo These are the files queued to be removed.
echo.
echo All of these files are Non-Critical and are hosted locally with the toolkit.

echo.
echo.

echo AFPTool.exe
echo aidl.exe
echo CacheRipper.exe
echo cat.exe
echo devcon.exe
echo dexdump.exe
echo egrep.exe
echo elevate.exe
echo fart199b.exe
echo fastboot.exe
echo ffmpeg.exe
echo fgrep.exe
echo filver32.exe
echo fsum.exe
echo gdisk.exe
echo grep.exe
echo heimdall-frontend.exe
echo heimdall.exe
echo htcnat.exe
echo inifile.exe
echo innounp.exe
echo izarcc.exe
echo LGMobileUpdater.exe
echo moto-fastboot.exe
echo msgbox.exe
echo mtty.exe
echo nbimg.exe
echo optipng.exe
echo PassThruSvr.exe
echo png2ico.exe
echo putty.exe
echo pvconv.exe
echo QDLTool.exe
echo QtADB.exe
echo revolutionary.exe
echo roptipng.exe
echo SamsungUnlockerConsole.exe
echo sed.exe
echo sfk.exe
echo unrevoked3.exe
echo unyaffs.exe
echo unyaffs2-win.exe
echo wait.exe
echo wc.exe
echo wincdemu.exe
echo WinMD5.exe
echo xtimer.exe
echo zipalign.exe

echo.
echo.
echo Scroll up to see all files to be removed!
echo.
pause



:: --------------------------------------------------------------------------
:: THESE ARE CONSIDERED NON-CRITICAL AND WILL BE REMOVED AUTOMATICALLY
::
:: IF YOU DO NOT FEEL COMFORTABLE WITH THESE SETTINGS, USE THE SAFE VERSION
:: --------------------------------------------------------------------------

if exist "%systemroot%\system32\AFPTool.exe" del /q /f /s "%systemroot%\system32\AFPTool.exe"
if exist "%systemroot%\system32\aidl.exe" del /q /f /s "%systemroot%\system32\aidl.exe"
if exist "%systemroot%\system32\CacheRipper.exe" del /q /f /s "%systemroot%\system32\CacheRipper.exe"
if exist "%systemroot%\system32\cat.exe" del /q /f /s "%systemroot%\system32\cat.exe"
if exist "%systemroot%\system32\devcon.exe" del /q /f /s "%systemroot%\system32\devcon.exe"
if exist "%systemroot%\system32\dexdump.exe" del /q /f /s "%systemroot%\system32\dexdump.exe"
if exist "%systemroot%\system32\egrep.exe" del /q /f /s "%systemroot%\system32\egrep.exe"
if exist "%systemroot%\system32\elevate.exe" del /q /f /s "%systemroot%\system32\elevate.exe"
if exist "%systemroot%\system32\fart199b.exe" del /q /f /s "%systemroot%\system32\fart199b.exe"
if exist "%systemroot%\system32\fastboot.exe" del /q /f /s "%systemroot%\system32\fastboot.exe"
if exist "%systemroot%\system32\ffmpeg.exe" del /q /f /s "%systemroot%\system32\ffmpeg.exe"
if exist "%systemroot%\system32\fgrep.exe" del /q /f /s "%systemroot%\system32\fgrep.exe"
if exist "%systemroot%\system32\filver32.exe" del /q /f /s "%systemroot%\system32\filver32.exe"
if exist "%systemroot%\system32\fsum.exe" del /q /f /s "%systemroot%\system32\fsum.exe"
if exist "%systemroot%\system32\gdisk.exe" del /q /f /s "%systemroot%\system32\gdisk.exe"
if exist "%systemroot%\system32\grep.exe" del /q /f /s "%systemroot%\system32\grep.exe"
if exist "%systemroot%\system32\heimdall-frontend.exe" del /q /f /s "%systemroot%\system32\heimdall-frontend.exe"
if exist "%systemroot%\system32\heimdall.exe" del /q /f /s "%systemroot%\system32\heimdall.exe"
if exist "%systemroot%\system32\htcnat.exe" del /q /f /s "%systemroot%\system32\htcnat.exe"
if exist "%systemroot%\system32\inifile.exe" del /q /f /s "%systemroot%\system32\inifile.exe"
if exist "%systemroot%\system32\innounp.exe" del /q /f /s "%systemroot%\system32\innounp.exe"
if exist "%systemroot%\system32\izarcc.exe" del /q /f /s "%systemroot%\system32\izarcc.exe"
if exist "%systemroot%\system32\LGMobileUpdater.exe" del /q /f /s "%systemroot%\system32\LGMobileUpdater.exe"
if exist "%systemroot%\system32\moto-fastboot.exe" del /q /f /s "%systemroot%\system32\moto-fastboot.exe"
if exist "%systemroot%\system32\msgbox.exe" del /q /f /s "%systemroot%\system32\msgbox.exe"
if exist "%systemroot%\system32\mtty.exe" del /q /f /s "%systemroot%\system32\mtty.exe"
if exist "%systemroot%\system32\nbimg.exe" del /q /f /s "%systemroot%\system32\nbimg.exe"
if exist "%systemroot%\system32\optipng.exe" del /q /f /s "%systemroot%\system32\optipng.exe"
if exist "%systemroot%\system32\PassThruSvr.exe" del /q /f /s "%systemroot%\system32\PassThruSvr.exe"
if exist "%systemroot%\system32\png2ico.exe" del /q /f /s "%systemroot%\system32\png2ico.exe"
if exist "%systemroot%\system32\putty.exe" del /q /f /s "%systemroot%\system32\putty.exe"
if exist "%systemroot%\system32\pvconv.exe" del /q /f /s "%systemroot%\system32\pvconv.exe"
if exist "%systemroot%\system32\QDLTool.exe" del /q /f /s "%systemroot%\system32\QDLTool.exe"
if exist "%systemroot%\system32\QtADB.exe" del /q /f /s "%systemroot%\system32\QtADB.exe"
if exist "%systemroot%\system32\revolutionary.exe" del /q /f /s "%systemroot%\system32\revolutionary.exe"
if exist "%systemroot%\system32\roptipng.exe" del /q /f /s "%systemroot%\system32\roptipng.exe"
if exist "%systemroot%\system32\SamsungUnlockerConsole.exe" del /q /f /s "%systemroot%\system32\SamsungUnlockerConsole.exe"
if exist "%systemroot%\system32\sed.exe" del /q /f /s "%systemroot%\system32\sed.exe"
if exist "%systemroot%\system32\sfk.exe" del /q /f /s "%systemroot%\system32\sfk.exe"
if exist "%systemroot%\system32\unrevoked3.exe" del /q /f /s "%systemroot%\system32\unrevoked3.exe"
if exist "%systemroot%\system32\unyaffs.exe" del /q /f /s "%systemroot%\system32\unyaffs.exe"
if exist "%systemroot%\system32\unyaffs2-win.exe" del /q /f /s "%systemroot%\system32\unyaffs2-win.exe"
if exist "%systemroot%\system32\wait.exe" del /q /f /s "%systemroot%\system32\wait.exe"
if exist "%systemroot%\system32\wc.exe" del /q /f /s "%systemroot%\system32\wc.exe"
if exist "%systemroot%\system32\wincdemu.exe" del /q /f /s "%systemroot%\system32\wincdemu.exe"
if exist "%systemroot%\system32\WinMD5.exe" del /q /f /s "%systemroot%\system32\WinMD5.exe"
if exist "%systemroot%\system32\xtimer.exe" del /q /f /s "%systemroot%\system32\xtimer.exe"
if exist "%systemroot%\system32\zipalign.exe" del /q /f /s "%systemroot%\system32\zipalign.exe"


:end

