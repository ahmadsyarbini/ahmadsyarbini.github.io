---
title: Wifi Router Setup
layout: post
categories:
- General
feature_image: "/assets/images/bg-4.jpg"
---
<!-- more -->

#### Mode 1 : Using Router As A Personal Repeater

1. Collect information by looking at the sticker info on the router or refer to manual:  
> Router IP Address (example http:\\\192.168.0.1)  
  username (example admin)  
  password (example the serial number)  
![router1](/assets/images/2026-04/router1.jpg)
2. Connect the router with a device that has ethernet cable on LAN1 port.
3. Open browser and enter the address in (1.) to access the web interface.
4. Proceed with admin login as per info in (1.)
![router2](/assets/images/2026-04/router2.png)
5. Familiarize and navigate through the interface.
6. Configure the upstream Wifi. This is the wifi credentials on the **main router**. Input SSID and Password.
![router3](/assets/images/2026-04/router3.png)
7. Configure rebroadcast Wifi SSID and password. This is the WiFi detail that is to be **repeated**. It is recommended to make it hidden.
![router4](/assets/images/2026-04/router4.png)

#### Mode 2 : Using Router As The Main Router

1. Collect information by looking at the sticker info on the router or refer to manual:  
> IP Address (example http:\\\192.168.0.1)  
 router admin username (example admin)  
 router admin password (example password1234)  
 ISP username (example user123@ISP.com)  
 ISP password (example password1234)  
![router1](/assets/images/2026-04/router1.jpg)
2. Connect the router with a device that has ethernet cable on LAN1 port.
3. Open browser and enter the address in (1.) to access the web interface.
4. Proceed with admin login as per info in (1.)
![router2](/assets/images/2026-04/router2.png)
5. Familiarize and navigate through the interface.
6. Go to internet setting. Set to PPPoE.
7. Input ISP username and password.
![router5](/assets/images/2026-04/router5.png)
8. On the VLAN ID for Malaysia:  
> Unifi = 500  
 Maxis = 621  
 Digi = 629  

![router6](/assets/images/2026-04/router6.png)
9. Setup Wifi SSID and Password.