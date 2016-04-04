@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:reset

:set_var
set action=99

:: Setting default download path
set dl_path=c:\adbtk

:: Setting default remote path
set remote_path=BLANK

:: Setting Default Filename
set dl_filename=BLANK

::call "scripts\get_info_bar.cmd"



:main
%showbanner%
echo.
echo.
echo Select a Superuser Version from below and Press ENTER:
echo.
echo.
echo 1) Superuser-3.2-arm-signed
echo.
echo 2) Superuser-3.2-x86-signed
echo.
echo 3) Superuser-3.2-RC2-arm-signed
echo.
echo 4) Superuser-3.2-RC2-x86-signed
echo.
echo 5) Superuser-3.1-arm-signed
echo.
echo 6) Superuser-3.1-beta-jb
echo.
echo 7) Superuser-3.1-x86-signed
echo.
echo 8) Superuser-3.1.3-arm-signed
echo.
echo 9) Superuser-3.1.3-x86-signed
echo.
echo 10) Superuser-3.1.2-arm-signed
echo.
echo 11) Superuser-3.1.2-x86-signed
echo.
echo 12) Superuser-3.1.1-arm-signed
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto end
if %action%==r goto end

:: Check Next Page flag
if %action%==N goto main2
if %action%==n goto main2

:: Reject any number higher than the highest menu item
if %action% gtr 12 goto reset

if %action%==1 goto opt1

if %action%==2 goto opt2

if %action%==3 goto opt3

if %action%==4 goto opt4

if %action%==5 goto opt5

if %action%==6 goto opt6

if %action%==7 goto opt7

if %action%==8 goto opt8

if %action%==9 goto opt9

if %action%==10 goto opt10

if %action%==11 goto opt11

if %action%==12 goto opt12

goto reset



:main2
set action=99
%showbanner%
echo.
echo.
echo Select a Superuser BIN Version from below and Press ENTER:
echo.
echo.
echo 13) Superuser-3.1.1-x86-signed
echo.
echo 14) Superuser-3.0.7-efgh-signed
echo.
echo 15) Superuser-3.0.7-efghi-signed
echo.
echo 16) Superuser-3.0.7-d-signed
echo.
echo 17) Superuser-3.0.7-bb-mips32-froyo
echo.
echo 18) Superuser-3.0.6-efgh-signed
echo.
echo 19) Superuser-3.0.6-d-signed
echo.
echo 20) su-bin-3.1-arm-signed
echo.
echo 21) su-bin-3.1-x86-signed
echo.
echo 22) su-bin-3.1.1-arm-signed
echo.
echo 23) su-bin-3.0.3-efgh-signed
echo.
echo 24) su-bin-3.0.3-d-signed
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto main
if %action%==r goto main

:: Check Next Page flag
if %action%==N goto main3
if %action%==n goto main3

:: Reject any number lower than the lowest menu item
if %action% lss 13 goto main2

:: Reject any number higher than the highest menu item
if %action% gtr 24 goto main2

if %action%==13 goto opt13

if %action%==14 goto opt14

if %action%==15 goto opt15

if %action%==16 goto opt16

if %action%==17 goto opt17

if %action%==18 goto opt18

if %action%==19 goto opt19

if %action%==20 goto opt20

if %action%==21 goto opt21

if %action%==22 goto opt22

if %action%==23 goto opt23

if %action%==24 goto opt24

goto reset



:main3
set action=99
%showbanner%
echo.
echo.
echo Select a Superuser BIN Version from below and Press ENTER:
echo.
echo.
echo 25) su-bin-3.0.3.2-efghi-signed
echo.
echo 26) su-bin-3.0.3.2-d-signed
echo.
echo 27) su-3.1.1-x86-signed
echo.
echo 28) su-3.0-efgh-signed
echo.
echo 29) su-3.0-d-signed
echo.
echo 30) su-3.0-bin-efgh-signed
echo.
echo 31) su-3.0-bin-d-signed
echo.
echo 32) su-3.0-beta4-efgh-signed
echo.
echo 33) su-3.0-beta4-cd-signed
echo.
echo 34) su-3.0-beta3-efgh-signed
echo.
echo 35) su-3.0-beta3-cd-signed
echo.
echo 36) su-3.0-beta2-efgh-signed
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto main2
if %action%==r goto main2

:: Check Next Page flag
if %action%==N goto main4
if %action%==n goto main4

:: Reject any number lower than the lowest menu item
if %action% lss 24 goto main3

:: Reject any number higher than the highest menu item
if %action% gtr 36 goto main3

if %action%==25 goto opt25

if %action%==26 goto opt26

if %action%==27 goto opt27

if %action%==28 goto opt28

if %action%==29 goto opt29

if %action%==30 goto opt30

if %action%==31 goto opt31

if %action%==32 goto opt32

if %action%==33 goto opt33

if %action%==34 goto opt34

if %action%==35 goto opt35

if %action%==36 goto opt36

goto reset


:main4
set action=99
%showbanner%
echo.
echo.
echo Select a Superuser BIN Version from below and Press ENTER:
echo.
echo.
echo 37) su-3.0-beta2-cd-signed
echo.
echo 38) su-3.0.5-efgh-signed
echo.
echo 39) su-3.0.5-d-signed
echo.
echo 40) su-3.0.4-efgh-signed
echo.
echo 41) su-3.0.4-d-signed
echo.
echo 42) su-3.0.2-efgh-signed
echo.
echo 43) su-3.0.2-d-signed
echo.
echo 44) su-3.0.2-bin-efgh-signed
echo.
echo 45) su-3.0.2-bin-d-signed
echo.
echo 46) su-3.0.1-efgh-signed
echo.
echo 47) su-3.0.1-d-signed
echo.
echo 48) su-3.0.1-bin-efgh-signed
echo.
echo.
%cocolor% 0d
echo N) Go To Next Page
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto main3
if %action%==r goto main3

:: Check Next Page flag
if %action%==N goto main5
if %action%==n goto main5

:: Reject any number lower than the lowest menu item
if %action% lss 36 goto main4

:: Reject any number higher than the highest menu item
if %action% gtr 48 goto main4

if %action%==37 goto opt37

if %action%==38 goto opt38

if %action%==39 goto opt39

if %action%==40 goto opt40

if %action%==41 goto opt41

if %action%==42 goto opt42

if %action%==43 goto opt43

if %action%==44 goto opt44

if %action%==45 goto opt45

if %action%==46 goto opt46

if %action%==47 goto opt47

if %action%==48 goto opt48

goto reset



:main5
set action=99
%showbanner%
echo.
echo.
echo Select a Superuser BIN Version from below and Press ENTER:
echo.
echo.
echo 49) su-3.0.1-bin-d-signed
echo.
echo 50) su-2.3.6.3-efgh-signed
echo.
echo 51) su-2.3.6.3-cd-signed
echo.
echo 52) su-2.3.6.1-ef-signed
echo.
echo 53) su-2.3.2-efgh-bin-signed
echo.
echo 54) su-2.3.2-cd-bin-signed
echo.
echo 55) su-2.1-e-unsecure-signed
echo.
echo.
%cocolor% 0b
echo R) Return To Previous Menu
%cocolor% 0e
echo.

set /p action=


:: Check QUIT first so it will exit properly and be able to reject higher numbers
if %action%==R goto main4
if %action%==r goto main4

:: Reject any number lower than the lowest menu item
if %action% lss 48 goto main5

:: Reject any number higher than the highest menu item
if %action% gtr 55 goto main5

if %action%==48 goto opt48

if %action%==49 goto opt49

if %action%==50 goto opt50

if %action%==51 goto opt51

if %action%==52 goto opt52

if %action%==53 goto opt53

if %action%==54 goto opt54

if %action%==55 goto opt55

goto reset




:opt1

set dl_filename=Superuser-3.2-arm-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt2

set dl_filename=Superuser-3.2-x86-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt3

set dl_filename=Superuser-3.2-RC2-arm-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt4

set dl_filename=Superuser-3.2-RC2-x86-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt5

set dl_filename=Superuser-3.1-arm-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt6

set dl_filename=Superuser-3.1-beta-jb
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt7

set dl_filename=Superuser-3.1-x86-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt8

set dl_filename=Superuser-3.1.3-arm-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt9

set dl_filename=Superuser-3.1.3-x86-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt10

set dl_filename=Superuser-3.1.2-arm-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt11

set dl_filename=Superuser-3.1.2-x86-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt12

set dl_filename=Superuser-3.1.1-arm-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt13

set dl_filename=Superuser-3.1.1-x86-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt14

set dl_filename=Superuser-3.0.7-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt15

set dl_filename=Superuser-3.0.7-efghi-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt16

set dl_filename=Superuser-3.0.7-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt17

set dl_filename=Superuser-3.0.7-bb-mips32-froyo
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt18

set dl_filename=Superuser-3.0.6-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt19

set dl_filename=Superuser-3.0.6-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt20

set dl_filename=su-bin-3.1-arm-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt21

set dl_filename=su-bin-3.1-x86-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt22

set dl_filename=su-bin-3.1.1-arm-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt23

set dl_filename=su-bin-3.0.3-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt24

set dl_filename=su-bin-3.0.3-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt25

set dl_filename=su-bin-3.0.3.2-efghi-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt26

set dl_filename=su-bin-3.0.3.2-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt27

set dl_filename=su-3.1.1-x86-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt28

set dl_filename=su-3.0-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt29

set dl_filename=su-3.0-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt30

set dl_filename=su-3.0-bin-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt31

set dl_filename=su-3.0-bin-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt32

set dl_filename=su-3.0-beta4-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt33

set dl_filename=su-3.0-beta4-cd-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt34

set dl_filename=su-3.0-beta3-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt35

set dl_filename=su-3.0-beta3-cd-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt36

set dl_filename=su-3.0-beta2-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt37

set dl_filename=su-3.0-beta2-cd-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt38

set dl_filename=su-3.0.5-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt39

set dl_filename=su-3.0.5-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt40

set dl_filename=su-3.0.4-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt41

set dl_filename=su-3.0.4-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt42

set dl_filename=su-3.0.2-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt43

set dl_filename=su-3.0.2-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt44

set dl_filename=su-3.0.2-bin-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt45

set dl_filename=su-3.0.2-bin-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt46

set dl_filename=su-3.0.1-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt47

set dl_filename=su-3.0.1-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt48

set dl_filename=su-3.0.1-bin-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt49

set dl_filename=su-3.0.1-bin-d-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt50

set dl_filename=su-2.3.6.3-efgh-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt51

set dl_filename=su-2.3.6.3-cd-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt52

set dl_filename=su-2.3.6.1-ef-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt53

set dl_filename=su-2.3.2-efgh-bin-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt54

set dl_filename=su-2.3.2-cd-bin-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:opt55

set dl_filename=su-2.1-e-unsecure-signed
set remote_path=rooting/su/bin

call "scripts\rooting\su_downloader.cmd"

goto reset


:end


