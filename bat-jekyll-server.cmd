@echo off

rem Open browser once
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" http://localhost:4000
rem start blank terminal to base on
start "" wt.exe
timeout /t 2 /nobreak >nul

:loop
echo Starting Jekyll...

bundle exec jekyll serve --livereload --host 0.0.0.0

echo Jekyll stopped. Restarting in 3 seconds...
timeout /t 2 /nobreak >nul

goto :loop