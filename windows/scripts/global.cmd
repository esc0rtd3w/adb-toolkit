@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:main


::---------------------------------------------------------------------------------
::---------------------------------------------------------------
:: PC ONLY VARIABLES
::---------------------------------------------------------------

::---------------------------------------------------------------
:: Setting current release version of ADB Toolkit
set releasever=1.6.3
::---------------------------------------------------------------

::---------------------------------------------------------------
:: Setting current ADB Mode
::set adbMode=none
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Setting Auto Update Flag
set autoupdateflag=0
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Setting dependencies root
set dependencyroot=bin\files
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Set Windows OS Version
set os_text=Unavailable
set check_os=call "scripts\os.cmd"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Setting Failure Variables

:: /scripts/other_utils/apktools.cmd
set alignFail=0
::---------------------------------------------------------------




::---------------------------------------------------------------
:: Modules Here (Added 20140711)

set moduleDex2Jar="%dependencyroot%\modules\dex2jar.rar"
set moduleJava="%dependencyroot%\modules\java.rar"
set moduleNovacom="%dependencyroot%\modules\novacom.rar"
set moduleSda="%dependencyroot%\modules\sda.rar"
::---------------------------------------------------------------



::---------------------------------------------------------------
:: EXE files in /bin/files/
:: 64-Bit compatibility. Example: use "%adb% install" instead of "adb install".

:: This does not seem to work when using in a FOR statement.

:: Old %7z% does not work because of the way variables are handled. New is %sevenz%
::set 7z="%dependencyroot%\7z.exe"
set sevenz="%dependencyroot%\7z.exe"
set sevenza="%dependencyroot%\7za.exe"
set aapt="%dependencyroot%\aapt.exe"
set adb="%dependencyroot%\adb.exe"
set AFPTool="%dependencyroot%\AFPTool.exe"
set aidl="%dependencyroot%\aidl.exe"
set axml="%dependencyroot%\AXMLPrinter2.jar"
set CacheRipper="%dependencyroot%\CacheRipper.exe"
set cat="%dependencyroot%\cat.exe"
set cocolor="%dependencyroot%\cocolor.exe"
set color="%dependencyroot%\color.exe"
set ControlBear="%dependencyroot%\ControlBear.exe"
set devcon="%dependencyroot%\devcon.exe"
set devconXP="%dependencyroot%\devconXP.exe"
set devcon64="%dependencyroot%\devcon64.exe"
set devconia64="%dependencyroot%\devconia64.exe"
set dexdump="%dependencyroot%\dexdump.exe"
set egrep="%dependencyroot%\egrep.exe"
set elevate="%dependencyroot%\elevate.exe"
set fart199b="%dependencyroot%\fart199b.exe"
set fastboot="%dependencyroot%\fastboot.exe"
set ffmpeg="%dependencyroot%\ffmpeg.exe"
set fgrep="%dependencyroot%\fgrep.exe"
set filelen="%dependencyroot%\filelen.exe"
set filver32="%dependencyroot%\filver32.exe"
set find="%dependencyroot%\find.exe"
set findstr="%dependencyroot%\findstr.exe"
set fsum="%dependencyroot%\fsum.exe"
set gdisk="%dependencyroot%\gdisk.exe"
set grep="%dependencyroot%\grep.exe"
set heimdall-frontend="%dependencyroot%\heimdall-frontend.exe"
set heimdall="%dependencyroot%\heimdall.exe"
set htcnat="%dependencyroot%\htcnat.exe"
set inifile="%dependencyroot%\inifile.exe"
set izarcc="%dependencyroot%\izarcc.exe"
::set java="%dependencyroot%\java.exe"
set java="%dependencyroot%\java\bin\java.exe"
:: Jar Set
set javajar="%dependencyroot%\java.exe" -jar

set moto-fastboot="%dependencyroot%\moto-fastboot.exe"
set msgbox="%dependencyroot%\msgbox.exe"
set mtty="%dependencyroot%\mtty.exe"
set nbimg="%dependencyroot%\nbimg.exe"
set nircmd="%dependencyroot%\nircmd.exe"
set optipng="%dependencyroot%\optipng.exe"
set PassThruSvr="%dependencyroot%\PassThruSvr.exe"
set png2ico="%dependencyroot%\png2ico.exe"
set PnPutil="%dependencyroot%\PnPutil.exe"
set putty="%dependencyroot%\putty.exe"
set pvconv="%dependencyroot%\pvconv.exe"
set QtADB="%dependencyroot%\QtADB.exe"
set rar="%dependencyroot%\rar.exe"
set revolutionary="%dependencyroot%\revolutionary.exe"
set roptipng="%dependencyroot%\roptipng.exe"
set SamsungUnlockerConsole="%dependencyroot%\SamsungUnlockerConsole.exe"
set sed="%dependencyroot%\sed.exe"
set sfk="%dependencyroot%\sfk.exe"
set tail="%dependencyroot%\tail.exe"
set tar="%dependencyroot%\tar.exe"
set taskkill="%dependencyroot%\taskkill.exe"
set tasklist="%dependencyroot%\tasklist.exe"
set unrevoked3="%dependencyroot%\unrevoked3.exe"
set unyaffs="%dependencyroot%\unyaffs.exe"
set wait="%dependencyroot%\wait.exe"
set wc="%dependencyroot%\wc.exe"
set wget="%dependencyroot%\wget.exe"
set wincdemu="%dependencyroot%\wincdemu.exe"


:: Fix for WinCDEmu not launching
set wincdemupath="%dependencyroot%"

set WinMD5="%dependencyroot%\WinMD5.exe"
set xml="%dependencyroot%\xml.exe"
set xtimer="%dependencyroot%\xtimer.exe"
set zipalign="%dependencyroot%\zipalign.exe"

:: ISO/CD/DVD Handling
set mkisofs="%dependencyroot%\iso\mkisofs.exe"
set rawrite="%dependencyroot%\iso\rawrite.exe"

set makeiso=call "scripts\modpacks\makeiso.cmd"
set makerar=call "scripts\modpacks\makerar.cmd"
set makezip=call "scripts\modpacks\makezip.cmd"

::---------------------------------------------------------------


::---------------------------------------------------------------
:: Setting Default Banner
set active_banner=default
set showbanner=call "scripts\banners\activate\%active_banner%.cmd"
set makebanner=call "scripts\banners\%active_banner%.cmd"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ADB Stuff
set getadbroot=%adb% root
set adbstart=%adb% start-server
set adbstop=%adb% kill-server
set adbwait=%adb% wait-for-device
set adbforcekill=%taskkill% /f /im adb.exe

set adbsync=%adb% shell sync

set adbgetprop=%adb% shell getprop

set fastbootstate=none
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Text outputs for some crap
set getmd5=call "scripts\md5.cmd"
set getver=call "scripts\filever.cmd"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Some Text
set txtnoroot="Your Device DOES NOT Appear To Have Root Privileges! The features you are trying to access WILL NOT work properly." "NO ROOT ACCESS!" OK
set nocompat=call "scripts\not_compatible.cmd"
set nocompat_warn=call "scripts\not_compatible_warn.cmd"
set nocompat_leave=call "scripts\not_compatible_leave.cmd"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Networking Stuff

:: Default IP Addresses
set eth0_ip=0.0.0.0
set eth1_ip=0.0.0.0
set eth2_ip=0.0.0.0
set eth3_ip=0.0.0.0

set wlan0_ip=0.0.0.0
set wlan1_ip=0.0.0.0
set wlan2_ip=0.0.0.0
set wlan3_ip=0.0.0.0

:: Default Subnets
set eth0_subnet=255.255.255.0
set eth1_subnet=255.255.255.0
set eth2_subnet=255.255.255.0
set eth3_subnet=255.255.255.0

set wlan0_subnet=255.255.255.0
set wlan1_subnet=255.255.255.0
set wlan2_subnet=255.255.255.0
set wlan3_subnet=255.255.255.0

:: Default _get Networking variables
set eth0_get_ip=call "scripts\networking\eth0_get_ip.cmd"

::---------------------------------------------------------------


::---------------------------------------------------------------
:: Setting misc paths
set dl_path=c:\adbtk
set dl_axml=c:\adbtk\axml
set dl_backups=c:\adbtk\backups
set dl_temp=c:\adbtk\temp
set db_temp=c:\adbtk\databases

:: Setting misc files
set binstub=bin\files\stubs
set miniweb=bin\files\stubs\miniweb.exe
set sqlitedb=bin\files\sqlitedb\sqlitedb.exe

set run_cleanup=call "scripts\cleanup.cmd"


:: Setting misc options
set iconpath=bin\files\icons
set multistatus="List of devices attached"
::---------------------------------------------------------------


::---------------------------------------------------------------
::Sets Defaults for Menu options
set action=99
set option=99
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Setting S-OFF default status to "0"
set soffstatus=0
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Pre-loading variables to get from device
set autostate=N/A
set rootstatus=N/A
set automodel=Press "X" to Reload
set autoserial=N/A

set suversion=N/A
set ro_product_model=N/A
set ro_product_board=N/A

set ro_product_cpu_abi=N/A
set ro_product_cpu_abi_text=N/A
set ro_product_cpu_abi2_text=N/A

set cpu_fix=call "scripts\cpu_fix.cmd"

::---------------------------------------------------------------


::---------------------------------------------------------------
:: backflag (used for sending the user one additional page back if needed)
set backflag=0
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Read-Only Flag. Used for driver extraction path change and others.

set check_readonly=call "scripts\check_read_only.cmd"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: dot_prop stuff

set build_prop_backup=call "scripts\build_prop_backup.cmd"


::---------------------------------------------------------------


::---------------------------------------------------------------
:: Setting default server
set dl_server=http://adbtoolkit.com
set dl_server2=http://adbtools-mirror.dnsdynamic.net

:: Setting default update paths
set update_path_bin=/.update/bin
set update_path_scripts=/.update/scripts

:: Setting Update Flags
set isbin=0
set isscript=0

:: Setting default remote path
set remote_path=BLANK

:: Setting Default Filename
set dl_filename=BLANK
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Remote Locations

:: CyanogenMod
::set getcm_web=http://get.cm/?device=
::set getcm_rc=&type=RC
::set getcm_msnapshot=&type=snapshot
::set getcm_nightly=&type=nightly
::set getcm_stable=&type=stable
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Browser Info
set chrome=0
set firefox=0
set ie=0
set opera=0
set safari=0

set browser="%ProgramFiles%\Internet Explorer\iexplore.exe"

set chromepath="%LocalAppData%\Google\Chrome\Application\chrome.exe"
set firefoxpath="%ProgramFiles%\Mozilla Firefox\firefox.exe"
set iepath="%ProgramFiles%\Internet Explorer\iexplore.exe"
set operapath="%ProgramFiles%\Opera\opera.exe"
set safaripath="%ProgramFiles%\Apple\Safari\safari.exe"

:: Setting default search engine
::set searchengine=http://www.google.com/search?q=
set searchengine=https://www.google.com/search?q=


:: Setting default download GET string (maybe remove later??)
set dl_get=%wget% -O "%dl_path%\%remote_path%\%dl_filename%" "%dl_server%/%remote_path%/%dl_filename%"


::---------------------------------------------------------------

set load_current_task=none

set progress_bar=call "scripts\progress_bar.cmd"

::---------------------------------------------------------------



::---------------------------------------------------------------
:: Gaming


set gamedb=scripts\gaming_tools\game_database

::---------------------------------------------------------------


::---------------------------------------------------------------


:: Misc and Un-used Code Below Here

set extract_rar=call "scripts\extract_rar.cmd"



::set dl_get=%wget% -p -P"%localfile%" -N -k "%remotefile%"
::dl_get=%wget% -O "%dl_path%\%remote_path%\%dl_filename%" "%dl_server%/%remote_path%/%dl_filename%"

::---------------------------------------------------------------
::---------------------------------------------------------------------------------




::---------------------------------------------------------------------------------
::---------------------------------------------------------------
:: DEVICE ONLY VARIABLES
::---------------------------------------------------------------

::---------------------------------------------------------------
:: Software Information
set get_device_sw=call "scripts\get_device_sw.cmd"

set mfr_fix=call "scripts\mfr_fix.cmd"
set ro_product_manufacturer_text=N/A
set ro_product_name=N/A

set device_sw_name=N/A
set ro_build_version_release=N/A
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Configuration and Prop files
set buildprop_current_entry=Unavailable

set buildprop=/system/build.prop
set gprop=/etc/g.prop

set dev_macaddress_raw=/efs/wifi/.mac.info
set dev_nvmacaddress_raw=/efs/wifi/.nvmac.info

::set dev_bt_macaddress=/efs/imei/bt.txt
set dev_bt_macaddress=/efs/bluetooth/bt_addr
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Files for bin and xbin
set dev_bin=/system/bin
set dev_xbin=/system/xbin

set dev_su=su
set dev_busybox=busybox
set dev_sqlite3=sqlite3

set dev_debugfs=debugfs
set dev_debugfsinput=debugfsinput

set dev_iwconfig=iwconfig
set dev_iwmulticall=iwmulticall
set dev_misc_version=misc_version
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Common Device Paths
set dev_emmc=/emmc
set dev_emmc2=/mnt/emmc
set dev_emmc3=/sdcard

set dev_sdcard=/sdcard
set dev_sdcard2=/mnt/sdcard
set dev_sdcard3=/sdcard/external_sd

set dev_local=/data/local
set dev_temp=/data/local/tmp

set dev_system=/system
set dev_systembin=/system/bin
set dev_data=/data

set dev_datadata=/data/data
set dev_datasystem=/data/system

set dev_appuser=/data/app
set dev_appsystem=/system/app
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Exploits

:: Main Path
set exploitpath=bin\rooting\exploits

:: Default Manual Exploit
set m_exploit=None

:: Default Exploit
set dev_exploit=None

:: Burrito Root
set burrito=rbfb

:: exploid2-arm5
set exploid2=exploid2-arm5.bin

:: exynos-abuse
set exynos-abuse=exynos-abuse

:: fre3vo
set fre3vo=fre3vo

:: GingerBreak
set gingerbreak=GingerBreak

:: GingerSnap
set gingersnap=GingerSnap

:: KillingMeSoftly
set kms=KillingMeSoftly

:: mempodroid
set mempodroid=mempodroid.bin

:: motofail
set motofail=motofail

:: nachoroot
set nachoroot=nachoroot.bin

:: psneuter
set psneuter=psneuter

:: Rage Against The Cage
set rage=rageagainstthecage
set ragebin=rageagainstthecage-arm5.bin

:: Taco Root
set taco=tacoroot.bin
set tacoscript=tacoroot.sh

:: zergRush
set zergrush=zergRush
set zergrush2=zergRush2
set zergrush3=zergRush3

:: Push Exploit Universal
set pushexploit=%adb% %exploitpath%\%dev_exploit% /data/local/tmp/.

:: Set Permissions Universal
set chmodexploit=%adb% shell "chmod 777 /data/local/tmp/%dev_exploit%"

:: Run Exploit on Device Universal
set runexploit=%adb% shell "./data/local/tmp/%dev_exploit%"

:: Push Exploit Specific
set pushexploitburrito=%adb% shell "./data/local/tmp/%burrito%"
set pushexploitexploid2=%adb% shell "./data/local/tmp/%exploid2%"
set pushexploitexynos-abuse=%adb% shell "./data/local/tmp/%exynos-abuse%"
set pushexploitfre3vo=%adb% shell "./data/local/tmp/%fre3vo%"
set pushexploitgingerbreak=%adb% shell "./data/local/tmp/%gingerbreak%"
set pushexploitgingersnap=%adb% shell "./data/local/tmp/%gingersnap%"
set pushexploitkms=%adb% shell "./data/local/tmp/%kms%"
set pushexploitmempodroid=%adb% shell "./data/local/tmp/%mempodroid%"
set pushexploitmotofail=%adb% shell "./data/local/tmp/%motofail%"
set pushexploitnachoroot=%adb% shell "./data/local/tmp/%nachoroot%"
set pushexploitpsneuter=%adb% shell "./data/local/tmp/%psneuter%"
set pushexploitrage=%adb% shell "./data/local/tmp/%rage%"
set pushexploitragebin=%adb% shell "./data/local/tmp/%ragebin%"
set pushexploittaco=%adb% shell "./data/local/tmp/%taco%"
set pushexploittacoscript=%adb% shell "./data/local/tmp/%tacoscript%"
set pushexploitzergrush=%adb% shell "./data/local/tmp/%zergrush%"
set pushexploitzergrush2=%adb% shell "./data/local/tmp/%zergrush2%"
set pushexploitzergrush3=%adb% shell "./data/local/tmp/%zergrush3%"

:: Set Permissions Specific
set chmodexploitburrito=%adb% shell "chmod 777 /data/local/tmp/%burrito%"
set chmodexploitexploid2=%adb% shell "chmod 777 /data/local/tmp/%exploid2%"
set chmodexploitexynos-abuse=%adb% shell "chmod 777 /data/local/tmp/%exynos-abuse%"
set chmodexploitfre3vo=%adb% shell "chmod 777 /data/local/tmp/%fre3vo%"
set chmodexploitgingerbreak=%adb% shell "chmod 777 /data/local/tmp/%gingerbreak%"
set chmodexploitgingersnap=%adb% shell "chmod 777 /data/local/tmp/%gingersnap%"
set chmodexploitkms=%adb% shell "chmod 777 /data/local/tmp/%kms%"
set chmodexploitmempodroid=%adb% shell "chmod 777 /data/local/tmp/%mempodroid%"
set chmodexploitmotofail=%adb% shell "chmod 777 /data/local/tmp/%motofail%"
set chmodexploitnachoroot=%adb% shell "chmod 777 /data/local/tmp/%nachoroot%"
set chmodexploitpsneuter=%adb% shell "chmod 777 /data/local/tmp/%psneuter%"
set chmodexploitrage=%adb% shell "chmod 777 /data/local/tmp/%rage%"
set chmodexploitragebin=%adb% shell "chmod 777 /data/local/tmp/%ragebin%"
set chmodexploittaco=%adb% shell "chmod 777 /data/local/tmp/%taco%"
set chmodexploittacoscript=%adb% shell "chmod 777 /data/local/tmp/%tacoscript%"
set chmodexploitzergrush=%adb% shell "chmod 777 /data/local/tmp/%zergrush%"
set chmodexploitzergrush2=%adb% shell "chmod 777 /data/local/tmp/%zergrush2%"
set chmodexploitzergrush3=%adb% shell "chmod 777 /data/local/tmp/%zergrush3%"

:: Run Exploit on Device Specific
set runburrito=%adb% shell "./data/local/tmp/%burrito%"
set runexploid2=%adb% shell "./data/local/tmp/%exploid2%"
set runexynos-abuse=%adb% shell "./data/local/tmp/%exynos-abuse%"
set runfre3vo=%adb% shell "./data/local/tmp/%fre3vo%"
set rungingerbreak=%adb% shell "./data/local/tmp/%gingerbreak%"
set rungingersnap=%adb% shell "./data/local/tmp/%gingersnap%"
set runkms=%adb% shell "./data/local/tmp/%kms%"
set runmempodroid=%adb% shell "./data/local/tmp/%mempodroid%"
set runmotofail=%adb% shell "./data/local/tmp/%motofail%"
set runnachoroot=%adb% shell "./data/local/tmp/%nachoroot%"
set runpsneuter=%adb% shell "./data/local/tmp/%psneuter%"
set runrage=%adb% shell "./data/local/tmp/%rage%"
set runragebin=%adb% shell "./data/local/tmp/%ragebin%"
set runtaco=%adb% shell "./data/local/tmp/%taco%"
set runtacoscript=%adb% shell "./data/local/tmp/%tacoscript%"
set runzergrush=%adb% shell "./data/local/tmp/%zergrush%"
set runzergrush2=%adb% shell "./data/local/tmp/%zergrush2%"
set runzergrush3=%adb% shell "./data/local/tmp/%zergrush3%"

::---------------------------------------------------------------


::---------------------------------------------------------------
:: Busybox Specific
set pushbusybox=%adb% push %dependencyroot%\%dev_busybox% %dev_temp%/.
set chmodbusybox=%adb% shell "chmod 755 %dev_temp%/%dev_busybox%"
set busyboxremount=%adb% shell "%dev_temp%/%dev_busybox% mount -o remount,rw %dev_system%"
set busyboxcopytodevice=%adb% shell "dd if=%dev_temp%/%dev_busybox% of=%dev_xbin%/%dev_busybox%"
set busyboxownership=%adb% shell "chown root.shell %dev_xbin%/%dev_busybox%"
set busyboxcorrectpermissions=%adb% shell "chmod 04755 %dev_xbin%/%dev_busybox%"
set busyboxinstall=%adb% shell "%dev_xbin%/%dev_busybox% --install -s %dev_xbin%"
set busyboxremovetemp=%adb% shell "rm -r %dev_temp%/%dev_busybox%"
::---------------------------------------------------------------


::---------------------------------------------------------------
set dev_clean_localtmp=adb shell "cd /data/local/tmp/; rm *"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Superuser Specific
set suapkpath=bin\rooting\su\apk
set subinpath=bin\rooting\su\bin

set suapk=su.apk
set subin=su

set supush=%adb% push %subinpath%\%subin% %dev_systembin%/%subin%
set suchown=%adb% shell "chown root.shell %dev_systembin%/%subin%"
set suchmod=%adb% shell "chmod 06755 %dev_systembin%/%subin%"
set suremove=%adb% shell "rm %dev_xbin%/%subin%"
set susymlink=%adb% shell "ln -s %dev_bin%/%subin% %dev_xbin%/%subin%"
set suapkpush=%adb% push %suapk% %dev_appsystem%/.
::---------------------------------------------------------------


::---------------------------------------------------------------
:: SuperSU Specific

::---------------------------------------------------------------


::---------------------------------------------------------------
:: Application Launch on Device
set applaunch=%adb% shell am start -a android.intent.action.MAIN -n 
::---------------------------------------------------------------


::---------------------------------------------------------------
set dev_maketmpdir=%adb% shell "cd %dev_local% && mkdir tmp"
set dev_cleantmpdir=%adb% shell "cd %dev_temp%/ && rm *"

::---------------------------------------------------------------




::---------------------------------------------------------------
:: Misc shell stuff

set shell_stop=%adb% shell stop
set shell_start=%adb% shell start

set usb_mass_storage_mode=%adb% setprop persist.sys.usb.config mass_storage
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Known Databases

:: System (Global)
set system_system=data/system

set system_accountsdb=data/system/accounts.db
set system_accountsdb2=data/system/users/0/accounts.db

set system_calender=data/data/com.android.providers.calender/databases/calender.db

set system_browser=data/data/com.android.browser/databases
set system_browser_autofill=data/data/com.android.browser/databases/autofill.db
set system_browser_browser2=data/data/com.android.browser/databases/browser2.db
set system_browser_db=data/data/com.android.browser/databases/db.sql

set system_clock_alarms=data/data/com.android.deskclock/databases/alarms.db
set system_clock_timers=data/data/com.android.deskclock/databases/timers.db

set system_contacts_storage_contacts2=data/data/com.android.providers.contacts/databases/contacts2.db
set system_contacts_storage_profile=data/data/com.android.providers.contacts/databases/profile.db

set system_download_manager=data/data/com.android.providers.downloads/databases/downloads.db

set system_drm_protected_content=data/data/com.android.providers.drm/databases/drm.db

set system_email_EmailProvider=data/data/com.android.email/databases/EmailProvider.db
set system_email_EmailProviderBackup=data/data/com.android.email/databases/EmailProviderBackup.db
set system_email_EmailProviderBody=data/data/com.android.email/databases/EmailProviderBody.db

set system_keychain_grants=data/data/com.android.keychain/databases/grants.db

set system_locksettings=/data/system/locksettings.db

set system_media_storage_internal=data/data/com.android.providers.media/databases/internal.db
set system_media_storage_external=data/data/com.android.providers.media/databases/external.db

set system_messaging_message_templates=data/data/com.android.mms/databases/message_templates.db

set system_phone_messaging_mmssms=data/data/com.android.providers.telephony/databases/mmssms.db
set system_phone_messaging_telephony=data/data/com.android.providers.telephony/databases/telephony.db

set system_settings_storage=data/data/com.android.providers.settings/databases/settings.db

set system_user_dictionary=data/data/com.android.providers.userdictionary/databases/user_dict.db

:: Facebook
set facebook_contactsdb=data/data/com.facebook.katana/databases/contacts_db2
set facebook_maindb=data/data/com.facebook.katana/databases/fb.db
set facebook_newsfeeddb=data/data/com.facebook.katana/databases/newsfeed_db
set facebook_prefsdb=data/data/com.facebook.katana/databases/prefs_db
set facebook_threadsdb=data/data/com.facebook.katana/databases/threads_db2
set facebook_uploadmanagerdb=data/data/com.facebook.katana/databases/uploadmanager.db
set facebook_usersdb=data/data/com.facebook.katana/databases/users_db2

::---------------------------------------------------------------


::---------------------------------------------------------------
:: Setting misc paths
set drvpath=bin\drivers
set devpath=bin\rooting\devices
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Common Fonts Path (Internal Memory)
set dev_fonts=/system/fonts
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Common Animations (Internal Memory)
set dev_bootanimation=/system/media/bootanimation.zip
set dev_downanimation=/system/media/downanimation.zip
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Common Media Paths (External SD Card and Internal SD Card)
set dev_sd_media=/sdcard/media/audio/
set dev_sd_alarms=/sdcard/media/audio/alarms
set dev_sd_notifications=/sdcard/media/audio/notifications
set dev_sd_ringtones=/sdcard/media/audio/ringtones

::---------------------------------------------------------------


::---------------------------------------------------------------
:: Common Media Paths (Internal Memory)
set dev_media=/system/media/audio
set dev_media_alarms=/system/media/audio/alarms
set dev_media_notifications=/system/media/audio/notifications
set dev_media_ringtones=/system/media/audio/ringtones
set dev_media_ui=/system/media/audio/ui

::---------------------------------------------------------------


::---------------------------------------------------------------
:: Common Media Files (UI - Internal Memory)
set dev_audio_auto_focus=/system/media/audio/ui/Auto_focus.ogg
set dev_audio_auto_focus_error=/system/media/audio/ui/Auto_focus_error.ogg
set dev_audio_cam_start=/system/media/audio/ui/Cam_Start.ogg
set dev_audio_cam_stop=/system/media/audio/ui/Cam_Stop.ogg
set dev_audio_camera_click=/system/media/audio/ui/camera_click.ogg
set dev_audio_camera_click_short=/system/media/audio/ui/Camera_click_short.ogg
set dev_audio_camera_focus=/system/media/audio/ui/camera_focus.ogg
set dev_audio_dock=/system/media/audio/ui/Dock.ogg
set dev_audio_effect_tick=/system/media/audio/ui/Effect_Tick.ogg
set dev_audio_keypress_delete=/system/media/audio/ui/KeyPressDelete.ogg
set dev_audio_keypress_return=/system/media/audio/ui/KeyPressReturn.ogg
set dev_audio_keypress_spacebar=/system/media/audio/ui/KeyPressSpaceBar.ogg
set dev_audio_keypress_standard=/system/media/audio/ui/KeyPressStandard.ogg
set dev_audio_lock=/system/media/audio/ui/Lock.ogg
set dev_audio_low_battery=/system/media/audio/ui/LowBattery.ogg
set dev_audio_media_volume=/system/media/audio/ui/Media_Volume.ogg
set dev_audio_poweron=/system/media/audio/ui/PowerOn.ogg
set dev_audio_shutter=/system/media/audio/ui/Shutter.ogg
set dev_audio_shutter_multiple=/system/media/audio/ui/Shutter_multiple.ogg
set dev_audio_undock=/system/media/audio/ui/Undock.ogg
set dev_audio_unlock=/system/media/audio/ui/Unlock.ogg
set dev_audio_video_record=/system/media/audio/ui/VideoRecord.ogg
set dev_audio_video_stop=/system/media/audio/ui/VideoStop.ogg
set dev_audio_vol_incremental=/system/media/audio/ui/VolumeIncremental.ogg
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Common Nandroid Files
set dev_nandroid_boot=boot.img
set dev_nandroid_cache=cache.ext4.tar
set dev_nandroid_data=data.ext4.tar
set dev_nandroid_recovery=recovery.img
set dev_nandroid_system=system.ext4.tar
set dev_nandroid_md5=nandroid.md5

::---------------------------------------------------------------


::---------------------------------------------------------------
:: Generic Remount
::set dev_remount=%adb% shell remount
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Remount /system for Read/Write Access

:: Method 1
set device_mount_rw1=%adb% shell mount -o remount rw /system 

:: Method 2
set device_mount_rw2=%adb% shell mount -o remount,rw -t yaffs2 /dev/block/mtdblock3 /system

:: Method 3
set device_mount_rw3=%adb% shell mount -o rw,remount /system
::---------------------------------------------------------------

::---------------------------------------------------------------
:: Remount /system for Read-Only Access

:: Method 1
set device_mount_ro1=%adb% shell mount -o remount ro /system 

:: Method 2
set device_mount_ro2=%adb% shell mount -o remount,ro -t yaffs2 /dev/block/mtdblock3 /system

:: Method 3
set device_mount_rw3=%adb% shell mount -o ro,remount /system
::---------------------------------------------------------------


::---------------------------------------------------------------
:: Change Permissions to /system/app for Read/Write Access
set perm775systemapp=chmod 755 /system/app
::---------------------------------------------------------------


::---------------------------------------------------------------------------------




:end


