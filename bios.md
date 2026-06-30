BIOS
====

* Enter BIOS setup - Del
* Flash Updated Bios (Gigabyte BIOS versions with small letters are beta versions)
* Enable XMP/EXPO Profile - RAM
* Disable Integrated GPU - Advanced > AMD CBS > NBIO Common Options > GFX Configurations > iGPU Configuration = Disabled
* Enable Resizable BAR - GPU
* Enable Above 4G decoding - GPU
* Enable Secure Boot - Windows
* Enable Trusted Platform Module (TPM) - Windows
* Disable Compatibility Support Module (CSM) - legacy BIOS compatibility
* Advanced Mode > Tweaker > XMP/EXPO = Profile 1
* Advanced Mode > Settings > IO Ports > Integrated Graphics = disabled
* Advanced Mode > Settings > IO Ports > Above 4G Decoding = Enabled
* Advanced Mode > Settings > IO Ports > Re-Size BAR Support = Auto
* Advanced Mode > Settings > IO Ports > Gigabyte utilities download and Configure = Disabled
* Advanced Mode > Settings > IO Ports > SATA config > Hot Plug = Disabled (hard drive doesn't show with "safely remove hardware and eject media")
* Advanced Mode > Settings > Miscellaneous > Trusted Platform Module = AUTO
* Advanced Mode > Boot > CSM  = Disabled
* Advanced Mode > Boot > Secure Boot = Enabled
* Advanced Mode > Tweaks > Advanced CPU Settings > SVM Mode = Enabled (not sure what this is for)

Fan Curves

| Sensor     |    |    |     |       |
| ---------- | -- | -- | --- | ----- |
| CPU PWM    | 30 | 60 | 100 |       |
| CPU Temp   | 70 | 80 |  90 |       |
| Front PWM  | 50 | 60 | 100 | Fan 3 |
| Front Temp | 70 | 80 |  90 |       |
| Rear PWM   | 45 | 60 | 100 | Fan 1 |
| Rear Temp  | 70 | 80 |  90 |       |
