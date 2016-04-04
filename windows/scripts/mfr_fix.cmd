@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set script_version=1.0.0



:main

set ro_product_manufacturer_text=%ro_product_manufacturer%

:: Haipad
if %ro_product_manufacturer%==haipad set ro_product_manufacturer_text=HaiPad
if %ro_product_manufacturer%==HAIPAD set ro_product_manufacturer_text=HaiPad
if %ro_product_manufacturer%==Haipad set ro_product_manufacturer_text=HaiPad
if %ro_product_manufacturer%==HaiPad set ro_product_manufacturer_text=HaiPad

:: HTC
if %ro_product_manufacturer%==htc set ro_product_manufacturer_text=HTC
if %ro_product_manufacturer%==HTC set ro_product_manufacturer_text=HTC
if %ro_product_manufacturer%==Htc set ro_product_manufacturer_text=HTC

:: Ingenic
if %ro_product_manufacturer%==ingenic set ro_product_manufacturer_text=Ingenic
if %ro_product_manufacturer%==INGENIC set ro_product_manufacturer_text=Ingenic
if %ro_product_manufacturer%==Ingenic set ro_product_manufacturer_text=Ingenic

:: LG Electronics
if %ro_product_manufacturer%==lge set ro_product_manufacturer_text=LG
if %ro_product_manufacturer%==LGE set ro_product_manufacturer_text=LG
if %ro_product_manufacturer%==LG set ro_product_manufacturer_text=LG
if %ro_product_manufacturer%==lg set ro_product_manufacturer_text=LG
if %ro_product_manufacturer%==Lg set ro_product_manufacturer_text=LG
if %ro_product_manufacturer%==Lge set ro_product_manufacturer_text=LG

:: Motorola
if %ro_product_manufacturer%==motorola set ro_product_manufacturer_text=Motorola
if %ro_product_manufacturer%==MOTOROLA set ro_product_manufacturer_text=Motorola
if %ro_product_manufacturer%==Motorola set ro_product_manufacturer_text=Motorola

:: Rockchip Product
if %ro_product_manufacturer%==rena set ro_product_manufacturer_text=Renesas
if %ro_product_manufacturer%==RENA set ro_product_manufacturer_text=Renesas
if %ro_product_manufacturer%==Rena set ro_product_manufacturer_text=Renesas

:: Samsung
if %ro_product_manufacturer%==samsung set ro_product_manufacturer_text=Samsung
if %ro_product_manufacturer%==SAMSUNG set ro_product_manufacturer_text=Samsung
if %ro_product_manufacturer%==Samsung set ro_product_manufacturer_text=Samsung

:: ViMicro
if %ro_product_manufacturer%==vimicro set ro_product_manufacturer_text=Vimicro
if %ro_product_manufacturer%==VIMICRO set ro_product_manufacturer_text=Vimicro
if %ro_product_manufacturer%==ViMicro set ro_product_manufacturer_text=Vimicro
if %ro_product_manufacturer%==Vimicro set ro_product_manufacturer_text=Vimicro




:end


