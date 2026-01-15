@echo off
rem this is just the workflow of push. dont worry.
cd /d E:\ahmadsyarbini.github.io
git add .
git commit -m "update"
git push origin main
timeout /t 4 /nobreak >nul