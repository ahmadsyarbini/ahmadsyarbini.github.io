---
title: MacOS Terminal Reformat Disk
layout: page
categories:
- Mac
feature_image: "/assets/images/bg-1.jpg"
---
<!-- more -->
1. Open terminal
2. Type `diskutil list` to see all the disks
3. syntax sequence :  
```bash
diskutil eraseDisk [disk format,APFS, HFS] [Drive Name] /dev/disk#
```
4. for example :
```bash
diskutil eraseDisk APFS Mac /dev/disk0
```