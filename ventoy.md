Ventoy
======

https://www.ventoy.net/en/download.html  


Ventoy2Disk_X64.exe/VentoyGUI.x86_64
------------------------------------

* As Administrator/Root
* Option > Secure Boot Support = ON
* Option > Partition Style = GPT


VentoyPlugson.exe/VentoyPlugson.sh
----------------------------------

* As Administrator/Root
* Auto Install Plugin > auto_install_uefi > Add > [image] Set auto install template for a file
* Input File Path and Template

Creates /ventoy/ventoy.json  
```
{
    "auto_install_uefi":[
        {
            "image": "/Win11_25H2_English_x64_v2.iso",
            "template":[
                "/autounattend.xml"
            ]
        }
    ]
}
```
