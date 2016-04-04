:: HTC Thunderbolt S-OFF Preparation Script

%adb% push %fre3vo% %dev_temp%

%adb% shell chmod 777 %dev_temp%/%fre3vo%

%adb% shell %dev_temp%/%fre3vo% -debug -start F0000000 -end FFFFFFFF



:: Use superuser 3.07


:end


