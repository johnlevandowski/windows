Apollo
======

For each application - check box to always use virtual display


Auto turning off PC monitors when connected from moonlight client
-----------------------------------------------------------------

Moonlight Client > Virtual Desktop
Settings > System > Display

Display 2 > Disconnect this display
Display 1 > Duplicate Desktop on Display 1 and 3 (moonlight display)
Display 1/3 > Show only on 3 (moonlight display)

Or, go to Audio/Video tab, in Advanced display device options section, set Devce configuration to Deactivate other displays and activate only the specified display.


Get an app to open this ms-gamebar link
---------------------------------------

Command prompt

```
reg add HKCR\ms-gamebar /f /ve /d URL:ms-gamebar
reg add HKCR\ms-gamebar /f /v "URL Protocol" /d ""
reg add HKCR\ms-gamebar /f /v "NoOpenWith" /d ""
reg add HKCR\ms-gamebar\shell\open\command /f /ve /d "%SystemRoot%\System32\systray.exe"
reg add HKCR\ms-gamebarservices /f /ve /d URL
```
