---
title: Git Repo Setup Guide For Myself
layout: page
categories:
- General
- Myself
feature_image: "https://w.wallhaven.cc/full/m9/wallhaven-m9l5v9.jpg"
---
<!-- more -->
### Install Git + Initialize

1. Install git using winget : `winget install Git.Git -h` or [manually](https://git-scm.com/install/)
2. Setup identity
```batch
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```
4. Credentials and login are prompted during `git push` at No. 6 below.

### Prepare The Repo Directory Locally

1. Type `git clone [insert repo link here]`
2. Navigate into the directory `cd repo`
3. Check status with `git status`
4. Add the whole directory `git add .`
5. Create commit `git commit -m "Initial setup"`
6. Push to repo `git push origin main`

### Batch File To Automate Push

```batch
@echo off
rem this is just the workflow of push. dont worry.
rem cd /d E:\ahmadsyarbini.github.io
git add -A
git commit -m "update"
git push origin main --force
timeout /t 4 /nobreak >nul
```