@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

:set_var
set action=99

set JAVA_HOME=bin\files\java\bin\java.exe

set java=bin\files\java\bin\java.exe

set jar=bin\files\java\bin\java.exe -jar

set javapath=bin\files\java\bin

set keytool=bin\files\java\bin\keytool.exe

set jarsigner=bin\files\java\bin\jarsigner.exe


set apkinfo=bin\files\aapt.exe dump badging

set unzip=bin\files\7z.exe x

set zip=bin\files\7za.exe a -t7z

set apktool=bin\files\apktool.jar

set dex2jar=call bin\files\dex2jar\d2j-dex2jar.bat

set signapk=call bin\files\dex2jar\d2j-apk-sign.bat

::set signapk=bin\files\signapk.jar

::set signapkw=bin\files\signapk.jar -w

set compile=b -f

set decompile=d

set testkey=bin\files\testkey.x509.pem bin\files\testkey.pk8

::set input=%1

set output=newfile

set outfolder=c:\adbtk\apkout

set apkinputfile=no_apk_file_selected






::call "scripts\get_info_bar.cmd"


if not exist %outfolder% md %outfolder%



:main
%showbanner%
echo.
echo.
echo Drag an APK file onto this window and Press ENTER:
echo.
echo.
echo Current Source: %apkinputfile%
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p apkinputfile=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %apkinputfile%==R goto end
if %apkinputfile%==r goto end

:: Check BLANK entry
if [%apkinputfile%]==[no_apk_file_selected] goto main
if [%apkinputfile%]==[no_apk_file_selected] goto main

::goto verifyapk

:: Set APK name only
for %%i in (%apkinputfile%) do set apknameonly=%%~ni

goto main2



:verifyapk
%showbanner%
echo.
echo.
echo Press ENTER to continue if Source File is correct:
echo.
echo.
echo Current Source: %apkinputfile%
echo.
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p apkinputfileverify=


:: Set APK name only
::for %%i in (%apkinputfile%) do set apknameonly=%%~ni


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %apkinputfileverify%==R goto end
if %apkinputfileverify%==r goto end



goto main2





:main2
set input=%apkinputfile%

%showbanner%
echo.
echo.
echo Current Source: %apkinputfile%
echo.
echo.
echo Select an ACTION from below and Press ENTER:
echo.
echo.
echo 1) Get APK Badge Info
echo.
echo 2) Unpack APK
echo.
echo 3) Unpack DEX Files
echo.
echo 4) Modify Other Files
echo.
echo 5) Create New APK
echo.
echo 6) Zipalign APK
echo.
echo 7) Sign APK
echo.
echo 8) Copy New APK File To Device
echo.
echo 9) Install New APK File To Device
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.


%msgbox% "This menu DOES NOT work properly for aligning and signing. Will be fixed soon!" "ADB Toolkit"

set action=r
set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto end
if %action%==r goto end


:: Reject any number higher than the highest menu item
if %action% gtr 9 goto main2

if %action%==1 goto getinfo

if %action%==2 goto unzip

if %action%==3 goto dex

if %action%==4 goto othermod

if %action%==5 goto zip

if %action%==6 goto align

if %action%==7 goto sign

if %action%==8 goto sdcopy

if %action%==8 goto install


goto reset



:getinfo
%apkinfo% %input%
pause>nul
goto main2


:unzip
if exist %outfolder% rd /s /q %outfolder%
%unzip% %input% -o%outfolder%
explorer %outfolder%
::pause>nul

::set apkinputfile="%outfolder%\%output%.apk"

if not exist "%outfolder%\newfile.apk" msgbox "No APK File Has Been Created" "Info"&goto main2

goto main2


:zip

if exist "%outfolder%\%output%.apk" %msgbox% "%output%.apk Already Exists!" "Info"&goto main2

if not exist "%outfolder%\AndroidManifest.xml" %msgbox% "AndroidManifest.xml Not Found" "Info"&goto main2

::if exist %outfolder% rd /s /q %outfolder%
%zip% "%outfolder%\%output%.apk" %outfolder%\*
%wait% 1
cls
%showbanner%
echo.
echo.
echo Cleaning Up....
xcopy /y /q /e "%outfolder%\%output%.apk" %dl_temp%
cls
%showbanner%
echo.
echo.
echo Cleaning Up....
%wait% 1
cls
%showbanner%
echo.
echo.
echo Cleaning Up....
::rd /s /q %outfolder%
del /s /q /f "%outfolder%\*"
cls
%showbanner%
echo.
echo.
echo Cleaning Up....
%wait% 2
cls
%showbanner%
echo.
echo.
echo Cleaning Up....
md %outfolder%
cls
%showbanner%
echo.
echo.
echo Cleaning Up....
xcopy /y /q /e "%dl_temp%\%output%.apk" %outfolder%
cls
%showbanner%
echo.
echo.
echo Cleaning Up....
del /s /q /f "%dl_temp%\%output%.apk"
cls
%showbanner%
echo.
echo.
echo Cleaning Up....
if exist %outfolder%\assets rd /s /q %outfolder%\assets
if exist %outfolder%\com rd /s /q %outfolder%\com
if exist %outfolder%\org rd /s /q %outfolder%\org
if exist %outfolder%\lib rd /s /q %outfolder%\lib
if exist %outfolder%\shared_prefs rd /s /q %outfolder%\shared_prefs
if exist %outfolder%\build_prop rd /s /q %outfolder%\build_prop
if exist %outfolder%\META-INF rd /s /q %outfolder%\META-INF
if exist %outfolder%\res rd /s /q %outfolder%\res

::explorer %outfolder%
::pause>nul

:: Setting current APK file for default installation
set currentapk="%outfolder%\%output%.apk"

set apkinputfile="%outfolder%\%output%.apk"

goto main2



:dex

if not exist "%outfolder%\classes.dex" msgbox "classes.dex Not Found" "Info"&goto main2

if not exist "%dl_path%\apkmod" md "%dl_path%\apkmod"

cls
%showbanner%
echo.
echo.
echo Converting DEX to JAR....

%dex2jar%

cls
%showbanner%
echo.
echo.
echo Unpacking JAR File....

%unzip% "%dl_path%\apkmod\classes-dex2jar.jar" -o"%dl_path%\apkmod"


cls
%showbanner%
echo.
echo.
echo Cleaning Up....

::explorer "%dl_path%\apkmod"

goto main2


:othermod

call "scripts\unavailable.cmd"

goto main2


:align

set alignFail=0

if exist "%outfolder%\newfile-aligned.apk" %msgbox% "newfile-aligned.apk Already Exists!" "Info"&goto main2

if not exist "%outfolder%\newfile.apk" msgbox "No Created APK File Found" "Info"&goto main2

::%zipalign% -v 4 "%javapath%\%output%.apk" "%javapath%\%output%-aligned.apk"

copy /y %zipalign% "%outfolder%\zipalign.exe" 
"%outfolder%\zipalign.exe" -f -v 4 "%outfolder%\newfile.apk" "%outfolder%\newfile-aligned.apk"

:: Setting current APK file for default installation
set currentapk="%outfolder%\newfile-aligned.apk"
set apkinputfile="%outfolder%\newfile-aligned.apk"

if not exist "%outfolder%\newfile-aligned.apk" set alignFail=1
if %alignFail%==1 set apkinputfile="%outfolder%\newfile.apk"
if %alignFail%==1 set apkinputfile="%outfolder%\newfile.apk"

del /q /f /s "%outfolder%\zipalign.exe" 

pause

goto main2


:sign

if not exist "%outfolder%\newfile-aligned.apk" %msgbox% "newfile-aligned.apk Does Not Exist! Skipping Alignment!" "Info"
if not exist "%outfolder%\newfile-aligned.apk" set apkinputfile="%outfolder%\newfile.apk"

if exist "%outfolder%\newfile-signed.apk" %msgbox% "newfile-signed.apk Already Exists!" "Info"&goto main2

set apkinputfilesigned="%outfolder%\newfile-signed.apk"

::set signapk=call "bin\files\dex2jar\d2j-apk-sign.bat"
"%java%" -Xmx512m -jar "%javapath%\signapk.jar" -w "%javapath%\testkey.x509.pem" "%javapath%\testkey.pk8" "%outfolder%\%apkinputfile%" "%outfolder%\%apkinputfilesigned%"

pause

cls
%showbanner%
echo.
echo.
echo Cleaning Up....


::for %%i in (%apkinputfile%) do set apknameonly=%%~ni

cls
%showbanner%
echo.
echo.
echo Cleaning Up....

::copy "%apknameonly%-aligned-signed.apk" "%outfolder%\%apknameonly%-aligned-signed.apk"
::copy "%apknameonly%-aligned-signed.apk" "%outfolder%\newfile-aligned-signed.apk"
copy "%apknameonly%-signed.apk" "%outfolder%\newfile-signed.apk"

cls
%showbanner%
echo.
echo.
echo Cleaning Up....

::del /q /f /s "%apknameonly%-aligned-signed.apk"
del /q /f /s "%apknameonly%-signed.apk"
::rd /s /q "%outfolder%\jsr305_annotations\"
::rd /s /q "%outfolder%\jcifs\"


cls
%showbanner%
echo.
echo.
echo Cleaning Up....

:: Setting current APK file for default installation
set currentapk="%outfolder%\newfile-aligned-signed.apk"

set apkinputfile="%outfolder%\newfile-aligned-signed.apk"

goto main2


:temp

::%java% %signapk% %testkey% "%outfolder%\%output%.apk" "%outfolder%\%output%-signed.apk"

xcopy /y /q /e %outfolder%\%output%.apk "%javapath%\%output%.apk"

::%java% %signapk% %testkey% "%output%.apk %output%-signed.apk"

::%keytool% -genkey -v -keystore "%dl_temp%\adbtk.keystore" -alias adbtk -keyalg RSA -keysize 2048 -validity 10000
::%jarsigner% -verbose -keystore "%dl_temp%\adbtk.keystore" "%javapath%\%output%-signed-aligned.apk" adbtk

xcopy /y /q /e "%javapath%\%output%-signed.apk" "%outfolder%\%output%-signed.apk"


del /q /f /s "%javapath%\%output%-aligned-signed.apk"
del /q /f /s "%javapath%\%output%.apk"


pause>nul
goto main2


:sdcopy

if not exist "%outfolder%\newfile-signed-aligned.apk" msgbox "No Signed and Aligned APK File Found" "Info"&goto 
main2

set sdpath=99

%showbanner%
echo.
echo.
echo Select a path from below and Press ENTER:
echo.
echo.
echo 1) /sdcard/
echo.
echo 2) /sdcard/external_sd/
echo.
echo 3) /external_sd/
echo.
echo 4) /mnt/external_sd/
echo.
echo 5) /mnt/sdcard/
echo.
echo 6) /mnt/emmc/
echo.
echo 7) /mnt/usbdisk0/
echo.
echo 8) /emmc/
echo.
echo 9) Enter Custom Path
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set sdpath=r
set /p sdpath=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %sdpath%==R goto main2
if %sdpath%==r goto main2


:: Reject any number higher than the highest menu item
if %sdpath% gtr 9 goto sdcopy

if %sdpath%==1 set copypath=/sdcard/

if %sdpath%==2 set copypath=/sdcard/external_sd/

if %sdpath%==3 set copypath=/external_sd/

if %sdpath%==4 set copypath=/mnt/external_sd/

if %sdpath%==5 set copypath=/mnt/sdcard/

if %sdpath%==6 set copypath=/mnt/emmc/

if %sdpath%==7 set copypath=/mnt/usbdisk0/

if %sdpath%==8 set copypath=/emmc/

if %sdpath%==9 set copypath=custom


goto sdcopygo


:sdcopygo
if %copypath%==custom goto custcpy

cls
%showbanner%
echo.
echo.
echo Copying New APK File To %copypath%....

%adb% push %currentapk% %copypath%


goto main2


:custcpy

set cpath=99

%showbanner%
echo.
echo.
echo Enter a CUSTOM PATH and Press ENTER:
echo.
echo.
echo Example: /sdcard/Download/
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set cpath=r
set /p cpath=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %cpath%==R goto sdcopy
if %cpath%==r goto sdcopy


:: Reject any number higher than the highest menu item
if %cpath% gtr 98 goto custcpy


:: Clone "cpath" to "copypath"
set copypath=%cpath%


cls
%showbanner%
echo.
echo.
echo Copying New APK File To %cpath%....

%adb% push %currentapk% %cpath%


goto main2



:install

cls
%showbanner%
echo.
echo.
echo Installing New APK File To Device....

%adb% install %currentapk%


goto main2


:end


