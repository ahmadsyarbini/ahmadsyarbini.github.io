---
title: Windows Diskpart Reformat guide
layout: post
categories:
- Windows
feature_image: "/assets/images/bg-3.jpg"
---
<!-- more -->
1. Insert USB drive and boot into it
2. When on the disk selection screen, bring out the cmd with pressing Shift + F10
![1](https://i.imgur.com/wPlH60u.png)
![2](https://i.imgur.com/B0o8oFC.png)
3. type `diskpart`  
![3](https://i.imgur.com/O20C2ZM.png)
4. type `list disk`
![4](https://i.imgur.com/7HVaCSJ.png)
5. type `select disk #` . Replace `#` with your target disk. Examine closely using `detail disk`
![5](https://i.imgur.com/hKB4tky.png)
6. type `clean`  
> **(IMPORTANT) This is permanent and irreversible. Check closely with `detail disk`. If still not confident, shut down and remove drives that you don't want to reformat, and start over.**
7. type `convert gpt`
![6](https://i.imgur.com/NvdqYed.png)
8. Exit cmd\
![7](https://i.imgur.com/bhNYNFq.png)
9. Refresh then select the `disk #` earlier
![8](https://i.imgur.com/27D0XEo.png)
10. Click Next and follow standard windows install procedure