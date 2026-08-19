@echo off
setlocal

rem message choice:

echo Press Y to git reset. This will remove all git history and push local to repo

choice /c YN /n /m "Proceed? "

if errorlevel 2 (
    echo Aborted.
    exit /b
)

cd /d "%userprofile%\ahmadsyarbini.github.io"

rem --- Delete existing .git folder ---
if exist ".git" (
    echo Deleting existing .git folder...
    rmdir /s /q ".git"
) else (
    echo No existing .git folder found.
)

rem --- Reinitialize git ---
echo Initializing new git repo...
git init

rem --- Add all files ---
echo Adding all files...
git add .

rem --- Create fresh commit ---
echo Creating initial commit...
git commit -m "fresh start"

rem --- Set branch to main ---
git branch -M main

rem --- Add remote if not already set ---
git remote get-url origin >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Adding remote...
    git remote add origin https://github.com/ahmadsyarbini/ahmadsyarbini.github.io.git
) else (
    echo Remote already exists.
)

rem --- Force push to overwrite remote ---
echo Force pushing to remote...
git push origin main --force

echo Git has been reset and pushed
timeout /t 5 /nobreak >nul