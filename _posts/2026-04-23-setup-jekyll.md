---
title: How To Setup This Jekyll Alembic Workflow
layout: post
categories:
- General
- Myself
feature_image: "/assets/images/bg-6.jpg"
---
<!-- more -->
### Initial Setup

1. install ruby using winget `winget install RubyInstallerTeam.RubyWithDevKit.3.4 -h`
2. open terminal, enter command `gem install bundler`
3. enter command `gem install jekyll`
4. optional info : to check `jekyll -v`
5. navigate into directory `cd \path`
6. enter command `jekyll new .`
7. enter command `bundle install`
8. enter command `bundle exec jekyll serve -livereload`
9. open browser to `http://localhost:4000`

### Adjusting Values

- To change font, first adjust the `_config.yml`

{% raw %}
```yaml
fonts:
  preconnect_urls:
    - https://fonts.gstatic.com
    - https://fonts.googleapis.com
  font_urls:
    - https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100..900;1,100..900&display=swap
    - https://fonts.googleapis.com/css2?family=Google+Sans+Code:ital,wght,MONO@0,300..800,1;1,300..800,1&family=Roboto:ital,wght@0,100..900;1,100..900&display=swap
```
{% endraw %}

- Then change settings in `_sass/_settings.scss`
{% raw %}
```scss
// Typography
$bodytype: (
  font-family: "Roboto, serif",
  regular: 400,
  bold: 700,
  italic: italic,
  cap-height: 0.75
) !default;

$headingtype: (
  font-family: '"Roboto", serif',
  regular: 400,
  bold: 700,
  cap-height: 0.75
) !default;

$monospacetype: (
  font-family: "Google Sans Code, monospace",
  regular: 400,
  cap-height: 0.68
) !default;
```
{% endraw %}

To change `code` typography, go to `_sass/sassline-base/_typography.scss` an adjust:

```scss
  pre {
    display: block;
    margin-bottom: 2rem;
    padding: 1rem;
    white-space: pre;
    white-space: pre-wrap;
    word-break: break-all;
    word-wrap: break-word;
    line-height: 1rem;
  }  
```

### The batch to start localhost

```batch
@echo off

rem Open browser once
start "" "C:\Program Files\Google\Chrome\Application\chrome.exe" http://localhost:4000

:loop
echo Starting Jekyll...

bundle exec jekyll serve --livereload

echo Jekyll stopped. Restarting in 3 seconds...
timeout /t 3 /nobreak >nul

goto :loop
```

### Git Push

```batch
@echo off
rem this is just the workflow of push. dont worry.
rem cd /d E:\ahmadsyarbini.github.io
git add -A
git commit -m "update"
git push origin main --force
timeout /t 4 /nobreak >nul
```


### Reset branch, Rebase + Initialize Git

``` batch
@echo off
setlocal
REM =========================================
REM FULL RESET + SHRINK .GIT FOR WINDOWS CMD
REM =========================================

REM set variable
set "GIT_PATH=path\here"

REM Change to your project directory
if not exist "%GIT_PATH%" (
    echo folder not found. exiting...
    timeout /t 5 /nobreak >nul
    exit /b
)
cd /d "%GIT_PATH%"

REM --- Delete existing .git folder ---
if exist ".git" (
    echo Deleting existing .git folder...
    rmdir /s /q ".git"
) else (
    echo No existing .git folder found.
)

REM --- Reinitialize git ---
echo Initializing new git repo...
git init

REM --- Add all files ---
echo Adding all files...
git add .

REM --- Create fresh commit ---
echo Creating initial commit...
git commit -m "fresh start (shrunk .git)"

REM --- Set branch to main ---
git branch -M main

REM --- Add remote if not already set ---
git remote get-url origin >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo Adding remote...
    git remote add origin https://github.com/ahmadsyarbini/ahmadsyar-scripts.git
) else (
    echo Remote already exists.
)

REM --- Force push to overwrite remote ---
echo Force pushing to remote...
git push -u origin main --force

echo =========================================
echo Done! .git has been reset and pushed.
timeout /t 5 /nobreak >nul
```