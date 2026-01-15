# Windows 11/10 Clean Install guide
## Download directly from Microsoft website
1. Download ISO from https://www.microsoft.com/en-us/software-download/windows11
## Customize autounattend.xml
1. Go to https://schneegans.de/windows/unattend-generator/
2. Fill in the form according to your preferences
3. Save autounattend.xml
>#### Note
>
>Recheck the xml file in your preferred text editor. For example, lookout for
>```
>reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender Security Center\Systray" /v HideSystray /t REG_DWORD /d 1 /f;
>``` 
>because is it added without option in the generator. Remove it or leave it, your choice.

## Put into the root of the directory
### For Ventoy (Recommended)
1. Proceed with ventoy routine. Install through `winget install Ventoy.Ventoy -h` or [manually](https://www.ventoy.net/)
2. Open terminal with admin
3. Install Anyburn through `winget install PowerSoftware.AnyBurn -h` or [manually](https://www.anyburn.com/)
4. Open Anyburn and Select "Edit Image File"
5. Insert autounattend.xml into ISO
6. Save ISO
7. Copy paste iso into ventoy usb drive prepared earlier
8. Boot into usb drive and proceed with reformat and reinstall routine
### For Rufus
1. Proceed with rufus routine. Install through `winget install Rufus.Rufus -h` or [manually](https://rufus.ie/en/)
2. Put the autounattend.xml file into the `root` of the usb drive. e.g. `F:/`
3. Boot into usb drive and proceed with reformat and reinstall routine

!!! The file must be named exactly `autounattend.xml` or else it will not work

My example of autounattend.xml : https://raw.githubusercontent.com/ahmadsyarbini/my-autounattend.xml/refs/heads/main/autounattend.xml
