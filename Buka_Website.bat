@echo off
title WEBSITE SMK BINA NUSANTARA

cd /d D:\WEB2

echo ==========================================
echo   WEBSITE SMK BINA NUSANTARA KEBUMEN
echo ==========================================
echo.
echo Menjalankan server...
echo.

start "SERVER WEBSITE" cmd /k "cd /d D:\WEB2 && node server.js"

timeout /t 3 /nobreak >nul

start "" "http://localhost:3001/"

exit