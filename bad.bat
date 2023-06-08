@echo off
set /p counter=<%APPDATA%\Honk-main\counter.txt
FOR /L %%G IN (1,1,%counter%) DO start %APPDATA%\Honk-main\GooseDesktop.exe
set /A counter=%counter% + 1
echo %counter% >%APPDATA%\Honk-main\counter.txt
