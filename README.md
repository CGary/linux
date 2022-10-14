# debian install script

```bash
su root
apt update
apt upgrade -y
apt install sudo git -y
sudo adduser [user] sudo
sudo reboot
git clone https://github.com/CGary/debian.git
cd debian
./install-f1.sh
sudo vim /etc/apt/sources.list
sudo reboot
cd debian
./install-f2.sh
```



