@echo off

color 0e


:main
set target=99

cls
echo Select Your Target and press ENTER:
echo.
echo.
echo 1) Android
echo.
echo 2) Apple
echo.
echo 3) Blackberry
echo.
echo 4) Microsoft
echo.
echo 5) Nokia
echo.
echo.

set /p target=

if %target% gtr 5 goto main


if %target%==1 goto opt1

if %target%==2 goto opt2

if %target%==3 goto opt3

if %target%==4 goto opt4

if %target%==5 goto opt5




:opt1

set mfr=99

cls
echo Type Your Manufacturer and press ENTER:
echo.
echo.
echo use all lowercase letters and NO SPACES!!!
echo.
echo Example: samsung
echo.
echo.

set /p mfr=


goto opt1a


:opt1a

set device=99

cls
echo Type Your Device and press ENTER:
echo.
echo.
echo use all lowercase letters and NO SPACES!!!
echo.
echo Example: galaxys3
echo.
echo.

set /p device=

goto opt1b


:opt1b

set model=99

cls
echo Type Your Model and press ENTER:
echo.
echo.
echo use all lowercase letters and hyphens "-" from normal model code
echo.
echo Example: sgh-t999
echo.
echo.

set /p model=

md %mfr%\%device%\%model%

explorer %mfr%\%device%\%model%

goto main



:opt2



goto main


:opt3



goto main


:opt4



goto main


:opt5



goto main








:end


