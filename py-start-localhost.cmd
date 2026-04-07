@echo off
rem this is the script for localhost using python
rem cd /d E:\ahmadsyarbini.github.io

rem python -m http.server 8000 || npx gulp

REM Start Python server in background
start "" cmd /k "python -m http.server 8000"

REM Wait a second for server to start (optional)
timeout /t 1 /nobreak > nul

REM Start Gulp watch
npx gulp