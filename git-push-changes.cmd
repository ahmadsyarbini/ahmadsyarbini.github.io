@echo off
rem this is my automated git push. dont worry about it
cd /d E:\ahmadsyarbini.github.io
git pull --rebase origin main
git add .
git commit -m "update"
git push origin main
timeout /t 3 /nobreak >nul