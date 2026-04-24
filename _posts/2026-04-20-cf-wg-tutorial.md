---
title: Using Wireguard with Cloudflare Tutorial
layout: page
categories:
- Windows
feature_image: "https://w.wallhaven.cc/full/gj/wallhaven-gjwg7l.jpg"
---
<!-- more -->
#### Prepare the wireguard

1. Open terminal with admin and install `winget install --id=WireGuard.WireGuard -e -h` or [manually](https://www.wireguard.com/install/).
2. Done

#### Prepare the cloudflare warp config file for wireguard

1. Open terminal with admin and install `winget install --id=ViRb3.wgcf -e -h` or [manually](https://github.com/ViRb3/wgcf)
2. Open normal, non-admin terminal window
3. Type `wgcf register`
4. Type `wgcf generate`
5. Look for the generated conf file in `%userprofile%` or whichever the current directory of the terminal
6. Open WireGuard and Import the conf file
![Alt Tag](https://i.imgur.com/7nDuAsa.png)
7. Done

> Note : Uncheck the "Block untunneled traffic" if you want LAN functionality (Steamlink, Virtual Desktop, NAS)
![blockuntunneled](https://i.imgur.com/gnk4aeM.png)