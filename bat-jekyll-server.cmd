@echo off

rem Open browser once
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" http://localhost:4000

:loop
echo Starting Jekyll...

bundle exec jekyll serve --livereload --host 0.0.0.0

echo Jekyll stopped. Restarting in 3 seconds...
timeout /t 2 /nobreak >nul

goto :loop