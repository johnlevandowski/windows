VirtualBox Virtual Machine
==========================

```
choco install virtualbox --params "/NoDesktopShortcut" --yes
```


Settings
--------

* General > Features > Shared Clipboard = Bidirectional
* General > Features > Drag-and-Drop = Bidirectional
* System > Motherboard > UEFI = ON
* System > Processor > PAE/NX = ON
* System > Processor > Nested VT-x/AMD-V = ON
* Display > Screen > Video Memory = MAX
* Display > Screen > Video Controller = VMSVGA
* Display > Screen > 3D Acceleration = ON
* Storage > Controller > SATA > Attributes > Use Host I/O Cache = ON
* Storage > Controller > SATA > fedora-44.vdi > Attributes > Solid-state Drive = ON


Enable TRIM
-----------

in Powershell

```
& "C:\Program Files\Oracle\VirtualBox\VBoxManage.exe" storageattach "fedora-44" --storagectl "SATA" --port 0 --device 0 --type hdd --nonrotational on --discard on --medium "G:\vm\fedora-44\fedora-44.vdi"
```


Test TRIM is available in VM
----------------------------

```
sudo hdparm -I /dev/sda | grep TRIM
lsblk --discard
```

Data Set Management TRIM supported (limit unknown)
DISC-MAX > 0

```
sudo fstrim -a --dry-run --verbose
```
