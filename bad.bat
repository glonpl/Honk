@echo off
set /p counter=<%APPDATA%\Honk-master\counter.txt
FOR /L %%G IN (1,1,%counter%) DO start %APPDATA%\Honk-master\GooseDesktop.exe
set /A counter=%counter% + 1
echo %counter% >%APPDATA%\Honk-master\counter.txt