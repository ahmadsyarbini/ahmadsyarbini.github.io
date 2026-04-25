---
title: How To Setup Dedicated Server Using Steam CMD
layout: post
categories:
- Windows
- Mac
- Linux
feature_image: "/assets/images/bg-2.jpg"
---
<!-- more -->
1. Prepare steamcmd. Install steamcmd using winget `winget install Valve.SteamCMD -h` or [manually](https://developer.valvesoftware.com/wiki/SteamCMD)
2. Identify the App ID of the dedicated server using steamdb.
3. For this example we use Project Zomboid Dedicated Server. So the App ID is `380870`.
4. Create a batch file with the following commands:
```batch
steamcmd.exe +force_install_dir "%path%" +login anonymous +app_update 380870 validate +quit
```