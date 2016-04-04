@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:main




:dependents
echo ------------------------------------------------->"%dl_temp%\dependencies_ver.txt"
echo Dependencies Version List for ADB Toolkit v%releasever%>>"%dl_temp%\dependencies_ver.txt"
echo ------------------------------------------------->>"%dl_temp%\dependencies_ver.txt"
echo.>>"%dl_temp%\dependencies_ver.txt"
for %%a in ("%dependencyroot%\*.exe") do %filver32% %%a>>"%dl_temp%\dependencies_ver.txt"


:end


