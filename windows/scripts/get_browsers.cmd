
if exist %chromepath% set chrome=1
if exist %firefoxpath% set firefox=1
if exist %iepath% set ie=1
if exist %operapath% set opera=1
if exist %safaripath% set safari=1

if %chrome%==0 set chromestatus=Not_Installed
if %chrome%==1 set chromestatus=Installed

if %firefox%==0 set firefoxstatus=Not_Installed
if %firefox%==1 set firefoxstatus=Installed

if %ie%==0 set iestatus=Not_Installed
if %ie%==1 set iestatus=Installed

if %opera%==0 set operastatus=Not_Installed
if %opera%==1 set operastatus=Installed

if %safari%==0 set safaristatus=Not_Installed
if %safari%==1 set safaristatus=Installed



:end


