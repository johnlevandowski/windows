Windows/Linux Dual Boot
=======================

Time sync when dual booting with Linux
--------------------------------------
Powershell as Admin  
```
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /t REG_DWORD /d 1 /f
```
Settings > Time & language > Date & time > Set time automatically = OFF  
Reboot and then turn it back ON  
