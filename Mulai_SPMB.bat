@echo off
title SPMB SMK Bina Nusantara 2027/2028
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
  echo.
  echo NODE.JS BELUM TERPASANG.
  echo Silakan instal Node.js terlebih dahulu.
  echo.
  pause
  exit /b
)

echo Menjalankan database SPMB...
start "SERVER SPMB - JANGAN DITUTUP" cmd /k "cd /d %~dp0spmb && node server.js"
timeout /t 2 /nobreak >nul
start "" "http://localhost:3001"
