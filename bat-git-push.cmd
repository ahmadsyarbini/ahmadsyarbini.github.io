@echo off
rem this is just the workflow of push. dont worry.
rem cd /d E:\ahmadsyarbini.github.io
git add -A
git commit -m "update"
git push origin main --force
timeout /t 4 /nobreak >nul