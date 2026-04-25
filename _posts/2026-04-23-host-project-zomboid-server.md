---
title: How To Setup Project Zomboid Dedicated Server
layout: post
categories:
- Windows
- Mac
- Linux
- Game
feature_image: "/assets/images/bg-6.jpg"
---
<!-- more -->
## Server itself
1. Install steamcmd using winget : `winget install Valve.SteamCMD -h` or [manually](https://developer.valvesoftware.com/wiki/SteamCMD).
2. Create a folder for the server.
3. Create a cmd/batch file, save it outside of the folder. In this example, the beta branch is being used.
```batch
steamcmd.exe +force_install_dir "%path%" +login anonymous +app_update 380870 -beta "42.13.1" validate +quit
```
4. Replace `%path%` with your own folder path. Replace `-beta "42.13.1"` with your own beta selection or delete it.
5. Run the batch file once. If error, run it again.
6. Open the `StartServer64.bat` file in your favorite text editor, edit the `-Xmx and -Xms` part to your suitable RAM config. For example:
```batch
".\jre64\bin\java.exe" -Djava.awt.headless=true -Dzomboid.steam=1 -Dzomboid.znetlog=1 -XX:+UseZGC -XX:-CreateCoredumpOnCrash 
-XX:-OmitStackTraceInFastThrow -Xms4G -Xmx6G -Djava.library.path=natives/;natives/win64/;. 
-cp %PZ_CLASSPATH% zombie.network.GameServer -statistic 0
```
7. In this example, use 4G-6G config if your RAM is 8GB.
8. Save that file.
9. Double click the `StartServer64.bat`
10. Done.

## Network Part
##### Port Forwarding
1. Proceed with port forwarding routine for public IP not behind CGNAT.
##### Using PlayitGG Tunneling
1. For ISP with CGNAT, use [Playit.gg](https://playit.gg/).
2. Install using winget `winget install DevelopedMethods.playit -h` or [manually](https://playit.gg/download).
3. Assign agent, if not yet done. Create tunnel using port `16261` UDP protocol, if not yet done.
4. Done.

## Transfering Save file
1. The server save files are located at `%userprofile%\Zomboid`. Cannot be moved.
2. `servertest` can be named differently depending on your config.

## Mods setup

> Stop the server first with command `quit`

1. Go to [https://pzidgrabber.com/](https://pzidgrabber.com/)
2. Paste the collection/mod link. Make sure it is made public. Copy the long list of Mods on left side
3. Go to folder `"%userprofile%\Zomboid\Server`
4. Find the file `[servername].ini`
5. Search for:
```
Mods=
```
6. Paste the long list mods in that place
7. Do the same with Workshop Items on the right side
8. Paste that workshop item at:
```
WorkshopItems=
```
9. Start the server

## Tips
To customize and select the name of the server, simply put `-servername "insert your server name here"` at this part of the `StartServer64.bat` :
```
".\jre64\bin\java.exe" <...code...> -servername "insert your server name here"
```