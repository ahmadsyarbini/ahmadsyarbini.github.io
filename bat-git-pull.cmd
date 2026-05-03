@echo off
echo mungkin tersalah tekan kot. pilih betul2
echo Press Y to git pull. This will overwrite local changes and pull latest from repo

choice /c YN /n /m "Proceed? "

if errorlevel 2 (
    echo Aborted.
    exit /b
)

echo Continuing...
git pull

timeout /t 4 /nobreak >nul