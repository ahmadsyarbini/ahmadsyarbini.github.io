---
title: Windows Diskpart Reformat guide
layout: post
categories:
- Windows
feature_image: "/assets/images/bg-3.jpg"
---
<!-- more -->
1. Insert a bootable USB drive prepared from the [routine]({% post_url 2026-04-20-windows-1011-clean-guide %}) and boot into it
2. When on the disk selection screen, bring out the cmd with pressing Shift + F10
![1](/assets/images/2026-04/diskpart1-cmd.png)
![2](/assets/images/2026-04/diskpart2-cmd.png)
3. type `diskpart`  
![3](/assets/images/2026-04/diskpart3-diskpart.png)
4. type `list disk`  
![4](/assets/images/2026-04/diskpart4-listdisk.png)
5. type `select disk #` . Replace `#` with your target disk. Examine closely using `detail disk`  
![5](/assets/images/2026-04/diskpart5-select-detail.png)
6. type `clean`  
> **(IMPORTANT) This is permanent and irreversible. Check closely with `detail disk`. If still not confident, shut down and remove drive(s) that you don't want to reformat, and start over.**
7. type `convert gpt`  
![6](/assets/images/2026-04/diskpart6-clean-convert.png)
8. Exit cmd\
![7](/assets/images/2026-04/diskpart7-exit.png)
9. Refresh then select the `disk #` earlier
![8](/assets/images/2026-04/diskpart8-refresh.png)
10. Click Next and follow standard windows install procedure