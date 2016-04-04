@echo off


::---------------------------------------------------------------
:: TEMPLATE ONLY
::set buildprop_current_entry=
::%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

::set /p =<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------




::---------------------------------------------------------------
:: Standard Properties
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.build.id
set buildprop_current_entry=ro.build.id
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_build_id=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.build.display.id
set buildprop_current_entry=ro.build.display.id
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_build_display_id=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.build.version.incremental
set buildprop_current_entry=ro.build.version.incremental
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_build_version_incremental=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.build.version.sdk
set buildprop_current_entry=ro.build.version.sdk
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_build_version_sdk=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.build.version.codename
set buildprop_current_entry=ro.build.version.codename
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_build_version_codename=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.build.version.release
set buildprop_current_entry=ro.build.version.release
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_build_version_release=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.build.date
set buildprop_current_entry=ro.build.date
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_build_date=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.build.type
set buildprop_current_entry=ro.build.type
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_build_type=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.build.user
set buildprop_current_entry=ro.build.user
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_build_user=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.build.host
set buildprop_current_entry=ro.build.host
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_build_host=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.build.tags
set buildprop_current_entry=ro.build.tags
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_build_tags=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.model
set buildprop_current_entry=ro.product.model
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_model=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.brand
set buildprop_current_entry=ro.product.brand
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_brand=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.name
set buildprop_current_entry=ro.product.name
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_name=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.device
set buildprop_current_entry=ro.product.device
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_device=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.board
set buildprop_current_entry=ro.product.board
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_board=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.cpu.abi
set buildprop_current_entry=ro.product.cpu.abi
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_cpu_abi=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.cpu.abi2
set buildprop_current_entry=ro.product.cpu.abi2
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_cpu_abi2=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.cpu.abi3
set buildprop_current_entry=ro.product.cpu.abi3
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_cpu_abi3=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.cpu.abi4
set buildprop_current_entry=ro.product.cpu.abi4
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_cpu_abi4=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.manufacturer
set buildprop_current_entry=ro.product.manufacturer
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_manufacturer=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.locale.language
set buildprop_current_entry=ro.product.locale.language
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_locale_language=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.product.locale.region
set buildprop_current_entry=ro.product.locale.region
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_product_locale_region=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.wifi.channels
set buildprop_current_entry=ro.wifi.channels
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_wifi_channels=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------


::---------------------------------------------------------------
:: ro.board.platform
set buildprop_current_entry=ro.board.platform
%adbgetprop% %buildprop_current_entry% >"%dl_temp%\build_prop\%buildprop_current_entry%" 2>&1

set /p ro_board_platform=<"%dl_temp%\build_prop\%buildprop_current_entry%"
::---------------------------------------------------------------



