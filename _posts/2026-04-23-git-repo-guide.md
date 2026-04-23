---
title: Git Repo Setup Guide For Myself
layout: page
categories:
- General
- Myself
feature_image: "https://w.wallhaven.cc/full/m9/wallhaven-m9l5v9.jpg"
---
<!-- more -->
### Install Git and initialize
1. Install git using winget : `winget install Git.Git -h` or [manually](https://git-scm.com/install/)
2. Setup identity
```batch
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```
4. Credentials and login are prompt during `git push` at No. 6 below.
### Prepare the repo directory locally
1. Type `git clone [repo link]`
2. Navigate into the directory `cd repo`
3. Check status with `git status`
4. Add the whole directory `git add .`
5. Create commit `git commit -m "Initial setup"`
6. Push to repo `git push origin main`
### Batch file to automate push
```batch
@echo off
rem this is just the workflow of push. dont worry.
rem cd /d E:\ahmadsyarbini.github.io
git add -A
git commit -m "update"
git push origin main --force
timeout /t 4 /nobreak >nul
```