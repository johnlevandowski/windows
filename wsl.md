WSL
===

Docker
------

```
wsl --install --distribution Debian --name Debian-docker
sudo apt update
sudo apt upgrade
sudo apt install git micro curl dnsutils
cd $HOME
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh # wait 20 seconds and it will install
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
docker run --name hello-world hello-world
docker container rm hello-world
```


Podman
------

```
wsl --install --distribution FedoraLinux-44 --name FedoraLinux-44-podman
sudo dnf upgrade
sudo dnf install podman podman-compose podman-docker git micro
podman run --name hello hello
podman container rm hello
```


Docker/podman unbound-build testing
-----------------------------------

```
git clone https://github.com/johnlevandowski/Raspberry-Pi-Server.git
cd Raspberry-Pi-Server/docker/unbound-build/
cp sample.env .env
dig @127.0.0.1 johnl.dev -p 5335
```


Reminders
---------

* Always "sudo shutdown now" a wsl distribution insteaed of just "exit" to preevent journald log file corruption


WSLg
----

when installing gui apps, shutdown wsl and restart for gui apps to launch

sudo dnf install @gnome-desktop

GDK_BACKEND=x11 firefox
