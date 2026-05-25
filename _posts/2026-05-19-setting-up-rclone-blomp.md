---
title: How To Setup Rclone With Blomp
layout: post
categories:
- Windows
- Mac
- Linux
- General
- Myself
feature_image: "/assets/images/bg-6.jpg"
---
<!-- more -->
### 🖥️ Setup Rclone

- Install Rclone using winget : `winget install --id=Rclone.Rclone --source=winget` or [manually](https://rclone.org/)

### 📝 Configuration

- Use the following template and fill in with your own variable:
```conf
[RcloneBlompRemoteName]
type = swift
user = YOUR_email@example.com
key = YOUR_blomp-password
auth = https://authenticate.blomp.com/v2.0/
tenant = storage
auth_version = 2
endpoint_type = public
```
> ❕Note :
you need to use the path with email to use  
example : `rclone lsd blomp:your_email@gmail.com`

2026-05-26 Update : blomp is not reliable. Using rclone with blomp is messy.

---

[Reference](https://support.blomp.com/viewtopic.php?t=4001)