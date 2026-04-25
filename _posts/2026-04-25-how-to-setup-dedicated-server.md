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
#### Explanation

<table style="border-collapse: collapse; width: 100%; border: 1px solid grey;">
  <tr>
    <th style="border: 1px solid grey; padding: 8px;">
    	<code>+force_install_dir "%path%"</code>
    </th>
    <th style="border: 1px solid grey; padding: 8px;">
    	set the directory. For example, <code>C:\servers</code>
  	</th>
  </tr>
  <tr>
    <td style="border: 1px solid grey; padding: 8px;">
    	<code>+login anonymous</code>
    </td>
    <td style="border: 1px solid grey; padding: 8px;">
    	Anonymous login. No need to use username and password.
    </td>
  </tr>
  <tr>
    <td style="border: 1px solid grey; padding: 8px;">
    	<code>+app_update 380870</code>
    </td>
    <td style="border: 1px solid grey; padding: 8px;">
    	Downloads and update. 380870 is the App ID.
    </td>
  </tr>
  <tr>
    <td style="border: 1px solid grey; padding: 8px;">
    	<code>validate</code>
    </td>
    <td style="border: 1px solid grey; padding: 8px;">
    	Verify integrity of the files
    </td>
  </tr>
  <tr>
    <td style="border: 1px solid grey; padding: 8px;">
    	<code>+quit</code>
    </td>
    <td style="border: 1px solid grey; padding: 8px;">
    	exit the process
    </td>
  </tr>
</table>
