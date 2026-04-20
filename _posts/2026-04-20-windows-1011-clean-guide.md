---
title: Windows 10/11 Clean Install Guide
layout: page
categories:
- Windows
feature_image: "https://w.wallhaven.cc/full/gj/wallhaven-gjwg7l.jpg"
---
<!-- more -->
#### Download directly from Microsoft website
1. Download ISO from [https://www.microsoft.com/en-us/software-download/windows11](https://www.microsoft.com/en-us/software-download/windows11)
#### Customize autounattend.xml
1. Go to [https://schneegans.de/windows/unattend-generator/](https://schneegans.de/windows/unattend-generator/)
2. Fill in the form according to your preferences
3. Save autounattend.xml

#### or

1. Just use my preset : [Right Click Save as](https://raw.githubusercontent.com/ahmadsyarbini/ahmadsyar-scripts/refs/heads/main/others/my-autounattend/autounattend.xml)
**my preset features :**
* No AI
* No Copilot
* No Pre-installed social media app
* No Pre-installed bloatware
* No Onedrive
* No News and Interest
* No Recall
* No Ads
* No Telemetry
* Offline account
* No internet requirement
* No microsoft account requirement
* TPM, Secure boot and RAM bypass
* Tidy start menu
* Rebloat instructions note on desktop
* Updatable
* No hack, No modification, only registry entry
* Disabled "Finish setup your windows with Microsoft Account" after restart
* Disabled password expiry
* tldr ; It's like the good old windows xp and windows 7 era

---

#### Put into the root of the directory
#### For Ventoy (Recommended)
1. Proceed with ventoy routine. Install through terminal: `winget install Ventoy.Ventoy -h` or [manually](https://www.ventoy.net/)
2. Install Anyburn through terminal: `winget install PowerSoftware.AnyBurn -h` or [manually](https://www.anyburn.com/)
3. Open Anyburn and Select "Edit Image File"
4. Insert `autounattend.xml` into ISO
5. Save ISO
6. Copy paste ISO into ventoy usb drive prepared earlier
7. Boot into usb drive and proceed with reformat and reinstall [routine]({% post_url 2026-04-20-using-diskpart-reformat-guide %})
#### For Rufus
1. Proceed with rufus routine. Install through `winget install Rufus.Rufus -h` or [manually](https://rufus.ie/en/)
2. Put the autounattend.xml file into the `root` of the usb drive. e.g. `F:\`
3. Boot into usb drive and proceed with reformat and reinstall [routine]({% post_url 2026-04-20-using-diskpart-reformat-guide %})

> The file must be named exactly `autounattend.xml` or else it will not work

Recheck the xml file in your preferred text editor. For example, lookout for
```
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" /v HideSystray /t REG_DWORD /d 1 /f;
``` 
because is it added without option in the generator. Remove it or leave it, your choice.