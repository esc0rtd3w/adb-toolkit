@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set script_version=1.0.0


:: Source for Versions
:: http://en.wikipedia.org/wiki/Android_version_history


:main

:: Check Astro Versions
if %ro_build_version_release%==1.0 set device_sw_name=Astro
if %ro_build_version_release%==1.0.0 set device_sw_name=Astro


:: Check Bender Versions
if %ro_build_version_release%==1.1 set device_sw_name=Bender
if %ro_build_version_release%==1.1.0 set device_sw_name=Bender


:: Check Cupcake Versions
if %ro_build_version_release%==1.5 set device_sw_name=Cupcake
if %ro_build_version_release%==1.5.0 set device_sw_name=Cupcake


:: Check Donut Versions
if %ro_build_version_release%==1.6 set device_sw_name=Donut
if %ro_build_version_release%==1.6.0 set device_sw_name=Donut


:: Check Eclair Versions
if %ro_build_version_release%==2.0 set device_sw_name=Eclair
if %ro_build_version_release%==2.0.0 set device_sw_name=Eclair
if %ro_build_version_release%==2.0.1 set device_sw_name=Eclair
if %ro_build_version_release%==2.1 set device_sw_name=Eclair
if %ro_build_version_release%==2.1.0 set device_sw_name=Eclair


:: Check Froyo Versions
if %ro_build_version_release%==2.2 set device_sw_name=Froyo
if %ro_build_version_release%==2.2.0 set device_sw_name=Froyo
if %ro_build_version_release%==2.2.1 set device_sw_name=Froyo
if %ro_build_version_release%==2.2.2 set device_sw_name=Froyo
if %ro_build_version_release%==2.2.3 set device_sw_name=Froyo


:: Check Gingerbread Versions
if %ro_build_version_release%==2.3 set device_sw_name=Gingerbread
if %ro_build_version_release%==2.3.0 set device_sw_name=Gingerbread
if %ro_build_version_release%==2.3.1 set device_sw_name=Gingerbread
if %ro_build_version_release%==2.3.2 set device_sw_name=Gingerbread
if %ro_build_version_release%==2.3.3 set device_sw_name=Gingerbread
if %ro_build_version_release%==2.3.4 set device_sw_name=Gingerbread
if %ro_build_version_release%==2.3.5 set device_sw_name=Gingerbread
if %ro_build_version_release%==2.3.6 set device_sw_name=Gingerbread
if %ro_build_version_release%==2.3.7 set device_sw_name=Gingerbread


:: Check Honeycomb Versions
if %ro_build_version_release%==3.0 set device_sw_name=Honeycomb
if %ro_build_version_release%==3.0.0 set device_sw_name=Honeycomb
if %ro_build_version_release%==3.1 set device_sw_name=Honeycomb
if %ro_build_version_release%==3.1.0 set device_sw_name=Honeycomb
if %ro_build_version_release%==3.2 set device_sw_name=Honeycomb
if %ro_build_version_release%==3.2.0 set device_sw_name=Honeycomb
if %ro_build_version_release%==3.2.1 set device_sw_name=Honeycomb
if %ro_build_version_release%==3.2.2 set device_sw_name=Honeycomb
if %ro_build_version_release%==3.2.3 set device_sw_name=Honeycomb
if %ro_build_version_release%==3.2.4 set device_sw_name=Honeycomb
if %ro_build_version_release%==3.2.5 set device_sw_name=Honeycomb
if %ro_build_version_release%==3.2.6 set device_sw_name=Honeycomb


:: Check Ice Cream Sandwich Versions
if %ro_build_version_release%==4.0 set device_sw_name=Ice Cream Sandwich
if %ro_build_version_release%==4.0.0 set device_sw_name=Ice Cream Sandwich
if %ro_build_version_release%==4.0.1 set device_sw_name=Ice Cream Sandwich
if %ro_build_version_release%==4.0.2 set device_sw_name=Ice Cream Sandwich
if %ro_build_version_release%==4.0.3 set device_sw_name=Ice Cream Sandwich
if %ro_build_version_release%==4.0.4 set device_sw_name=Ice Cream Sandwich


:: Check Jellybean Versions
if %ro_build_version_release%==4.1 set device_sw_name=Jellybean
if %ro_build_version_release%==4.1.0 set device_sw_name=Jellybean
if %ro_build_version_release%==4.1.1 set device_sw_name=Jellybean
if %ro_build_version_release%==4.1.2 set device_sw_name=Jellybean
if %ro_build_version_release%==4.1.3 set device_sw_name=Jellybean
if %ro_build_version_release%==4.2 set device_sw_name=Jellybean
if %ro_build_version_release%==4.2.0 set device_sw_name=Jellybean
if %ro_build_version_release%==4.2.1 set device_sw_name=Jellybean
if %ro_build_version_release%==4.2.2 set device_sw_name=Jellybean
if %ro_build_version_release%==4.3.0 set device_sw_name=Jellybean
if %ro_build_version_release%==4.3.1 set device_sw_name=Jellybean
if %ro_build_version_release%==4.3.2 set device_sw_name=Jellybean


:: Check KitKat Versions
if %ro_build_version_release%==4.4 set device_sw_name=KitKat
if %ro_build_version_release%==4.4.1 set device_sw_name=KitKat
if %ro_build_version_release%==4.4.2 set device_sw_name=KitKat
if %ro_build_version_release%==4.4.3 set device_sw_name=KitKat
if %ro_build_version_release%==4.4.4 set device_sw_name=KitKat
if %ro_build_version_release%==4.4.5 set device_sw_name=KitKat


:: Check Lollipop Versions
if %ro_build_version_release%==5.0 set device_sw_name=Android L




:end


