@echo off

title Android ADB Toolkit v%releasever%                              -[ adbtoolkit.com ]-



:main




:dependents
echo ------------------------------------------------->"%dl_temp%\dependencies_md5.txt"
echo Dependencies MD5 List for ADB Toolkit v%releasever%>>"%dl_temp%\dependencies_md5.txt"
echo ------------------------------------------------->>"%dl_temp%\dependencies_md5.txt"
echo.>>"%dl_temp%\dependencies_md5.txt"
for %%a in ("%dependencyroot%\*.exe") do %sfk% md5 %%a>>"%dl_temp%\dependencies_md5.txt"


:end


