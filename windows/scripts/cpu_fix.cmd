@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-


:reset

:set_var
set script_version=1.0.1

goto end

:main

if %ro_product_cpu_abi%==armeabi-v7a set ro_product_cpu_abi_text=ARM v7a
if %ro_product_cpu_abi%==armeabi set ro_product_cpu_abi_text=ARM v7

if %ro_product_cpu_abi2%==armeabi-v7a set ro_product_cpu_abi2_text=ARM v7a
if %ro_product_cpu_abi2%==armeabi set ro_product_cpu_abi2_text=ARM v7

if %ro_product_cpu_abi3%==armeabi-v7a set ro_product_cpu_abi3_text=ARM v7a
if %ro_product_cpu_abi3%==armeabi set ro_product_cpu_abi3_text=ARM v7

if %ro_product_cpu_abi4%==armeabi-v7a set ro_product_cpu_abi4_text=ARM v7a
if %ro_product_cpu_abi4%==armeabi set ro_product_cpu_abi4_text=ARM v7




:end


