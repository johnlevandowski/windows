Windows Installation
====================

Only connect main monitor during install  

Disconnect extra drives (SATA, USB) or windows may install EFI boot loader on wrong drive  

Boot to Windows Installer USB Drive – F11 (ASRock) F12 (Gigabyte)  

Install Windows 11 using autounattend.xml > https://schneegans.de/windows/unattend-generator/  

Allowed bloatware apps:
* Calculator
* Microsoft Store
* Notepad (modern)
* OpenSSH Client
* Snipping Tool
* Windows Terminal


First Boot
----------

* Accounts > Sign-in options > Password > Change 'password'
* Settings > Privacy & Security > Device Encryption = OFF
* Settings > Windows Update > Check for Updates / Download Now - reboot - multiple times until no more updates
* Settings > Windows Update > Advanced Options > Optional Updates - check and install all
* Firefox - https://www.firefox.com/en-US/


Drivers
-------

* AMD - https://www.amd.com/en/support/download/drivers.html
* Motherboard Audio, LAN, and WiFi drivers - Gigabyte Aorus Elite WIFI7 - https://www.gigabyte.com/Motherboard/B850-AORUS-ELITE-WIFI7-rev-1x/support
* Printer - https://support.brother.com/g/b/downloadlist.aspx?c=us&lang=en&prod=hl2230_us&os=10068
* Garmin Express and USB Drivers - https://www8.garmin.com/support/collection.jsp?product=010-00447-00
* Start > Device Manager – verify no unrecognized devices to install drivers for
* Start > Advanced System Settings > Hardware > Device Installation Settings = No (not sure if this is needed)


Registry Editor
---------------

* Registry Editor > Import > registrykeysupdate_system.reg


System Settings
---------------

* Settings > System > Display 1 > HDR = ON > SDR content brightness = 30%
* Settings > System > Display 1&2 > Scale = 125%
* Settings > System > Display 1&2 > Advanced display > Choose a refresh rate = 144hz
* Settings > System > Activation > Activate with product key
* Settings > Apps > Installed Apps > Uninstall unwanted apps (Copilot)
* Windows Security > Virus & threat protection > Manage ransomware protection - Controlled folder access = ON
* Windows Security > App & browser control > Reputation-based protection settings > Potentially unwanted app blocking = ON (apps and downloads)
* Control Panel > Hardware and Sound > Power Options > Preferred Plan = High performance
* Control Panel > Hardware and Sound > Power Options > Change plan settings > Turn off the display = 3 minutes
* Control Panel > Hardware and Sound > Power Options > Change plan settings > Put the computer to sleep = 15 minutes (backup takes longer than 10 minutes)
* Control Panel > Hardware and Sound > Power Options > Change plan settings > Change advanced power settings > Hard Disk > Turn off hard disk after = 2 minutes
* Windows PowerShell > Run as Adminstrator > powercfg.exe /hibernate off
* Task Manager > Startup > Disable Applications as Needed


Set Drive Letters
-----------------

* Computer Management (as Administrator) > Storage > Disk Management > Right Click drive partition > Change Drive Letter and Paths
* Backup 2TB Hard Drive = D:
* Games 2TB M2 = G:


Create Restore Point
--------------------

* Delete Icons from Desktop and Empty Trash
* Settings > System > Point-in-time Restore > View or edit > Restore point disk usage > Max usage = 10%
* Start > Create a restore point > Select Local Disk > Create > Description = "Clean Installation" > Create


Set Up Local User Account
-------------------------

* Login as Local User
* Accounts > Sign-in options > Password > Change 'password'
* File Explorer > This PC > Right Click > Show more options > Map network drive (Z)
```
\\rpi5.lan.johnl.dev\share
```
* File Explorer > This PC > Right Click > Show more options > Map network drive (Y)
```
\\rpi5.lan.johnl.dev\john
```
* Settings > Apps > Installed Apps > Uninstall unwanted apps


Display Settings
-------------------

### AOC OSD
* Game Setting > Overdrive = Medium
* Luminance > Local Dimming = Medium


### AOC Settings
* Settings > System > Display > HDR = ON > SDR content brightness = 30%
* Settings > System > Display > HDR Display Calibration = 0,1150,1150,0  
* Settings > System > Display > Scale = 125%
* Settings > System > Display > Advanced display > Choose a refresh rate = 180hz


### LG OSD
* Menu > Game Mode = sRGB


### LG Settings
* Settings > System > Display > HDR = OFF
* Settings > System > Display > Scale = 125%
* Settings > System > Display > Advanced display > Choose a refresh rate = 144hz


Install Applications
--------------------

### Chocolatey

* PowerShell as Administrator

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
```

```
choco install `
7zip.install `
gnucash `
hwinfo.install `
irfanview `
libreoffice-fresh `
notepadplusplus.install `
treesizefree `
--yes
```


### Microsoft Store
* Apple Music
* Apple Devices
* GIMP
* iCloud
* Microsoft PowerToys
* Windows HDR Calibration


### Games
* Blizzard - https://download.battle.net/en-us/desktop
* Curseforge Standalone (change TSM to ignored) - https://www.curseforge.com/download/app
* TradeSkillMaster - https://support.tradeskillmaster.com/tsm-desktop-application/how-do-i-set-up-the-tsm-desktop-application
* Steam - https://store.steampowered.com/about/


### Applications that auto update
* GitHub Desktop - https://desktop.github.com/download/


### Cleanup

* Delete Icons from Desktop and Empty Trash  


User Settings
-------------

* Windows Security > Virus & threat protection > Manage ransomware protection > Protected Folders > Add a protected folder = Z:\
* Windows Security > Virus & threat protection > Manage ransomware protection > Protected Folders > Add a protected folder = Y:\
* Windows Security > Virus & threat protection > Manage ransomware protection > Protected Folders > Add a protected folder = 
```
\\rpi5.lan.johnl.dev\share
```
* Windows Security > Virus & threat protection > Manage ransomware protection > Protected Folders > Add a protected folder =
```
\\rpi5.lan.johnl.dev\john
```
* Windows Security > App & browser control > Reputation-based protection settings > Potentially unwanted app blocking = ON (apps and downloads)
* Settings > Bluetooth & devices > Mouse > Mouse Pointer Speed = 15
* Settings > Bluetooth & devices > Mouse > Enhance pointer precision = OFF
* Settings > Apps > Installed Apps > Uninstall unwanted apps
* Settings > Personalization > Background = 4000 x 2560 span
* Settings > Personalization > Dynamic Lighting > Use Dynamic Lighting on my device = OFF
* Settings > Personalization > Dynamic Lighting > Compatible apps in the foreground always control dynamic lighting = OFF
* Settings > Personalization > Lock Screen > Personalize your lock screen = Picture
* Settings > Personalization > Lock screen > Screen saver > on resume, display logon screen = ON
* Settings > Accesibility > Mouse pointer and touch > Mouse pointer style to green and size to 2
* Task Manager > Startup > Disable Applications as Needed


Registry Editor
---------------

* Registry Editor > Import > registrykeysupdate_user.reg
* Command Prompt
```
taskkill /f /im explorer.exe & start explorer.exe
```


User Application Settings
--------------------

### AMD Adrenaline
* Settings > system > Factory Reset = Perform Reset
* Settings > Display > Adaptive Sync Compatible = Enabled


### Microsoft Edge
* Settings > System and performance > System > Startup Boost = OFF
* Settings > System and performance > System > Continue running background extensions ... = OFF
* Settings > System and performance > System > Use accelerated graphics when available = OFF


### Firefox
* Add-ons and themes > Bitwarden - Add to Firefox
* RIght Click Toolbar > Bookmarks Toolbar > Always Show
* Delete Mozilla Firefox folder from Bookmarks Menu
* Delete Getting Started bookmark from Bookmarks Toolbar
* Right Click Import Bookmarks > Remove from Toolbar
* Settings > Account and sync > Sign in to sync
* Settings > Home and startup > New windows = Blank Page
* Settings > Home and startup > New tabs = Blank Page
* Settings > Privacy & Security > Enable DNS over HTTPS using = OFF
* Settings > Passwords and autofill > Ask to save passwords = OFF
* Settings > Passwords and autofill > Save and autofill payment info = OFF
* Settings > Passwords and autofill > Save and autofill addresses = OFF
* Settings > Tabs and browsing > Performance > Use recommended performance settings = OFF
* Settings > Tabs and browsing > Performance > Use hardware acceleration when available = OFF
* about:config - browser.bookmarks.autoExportHTML = TRUE


### Bitwarden
* Settings > Options > Clear clipboard = 5 minutes


### LibreOffice
* Tools > Options > LibreOffice > View > Force Skia software rendering (stop using GPU)
* Tools > Options > LibreOffice > Paths > My Documents = Z: drive
* Tools > Options > LibreOffice Calc > Calculate > Allow use of OpenCL = OFF (stop using GPU)


### Notepad++
* Settings > Preferences > Dark Mode = Follow Windows
* Settings > Preferences > Backup > Remember current session for next launch = OFF
* Settings > Preferences > Misc > rendering mode = GDI (don't use GPU)


First Full Backup
-----------------

* https://www.paragon-software.com/free/br-free/# - gmail for activation
* Backup Strategy - Daily, 8am, chain of full and 6 incremental backups, keep backups until storage is full
* Options - backup splitting = do not split
* May need to change from system user to different user (adminjohn), but seems to work without for now


Schedule Backup Batch File
--------------------------

* Login Regular User
* Task Scheduler - schedule task to run at 1-2 minutes before 8am paragon backup so computer wakes from sleep - max 2 minutes due to System unattended sleep timeout
* Task Scheduler Task > Properties > General > Configure For = Windows 10
* Task Scheduler Task > Properties > Conditions > Wake the computer to run this task = ON
* Task Scheduler Task > Properties > Settings > Run this task as soon as possible after a scheduled start is missed = ON
