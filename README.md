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
./base.sh
sudo vim /etc/apt/sources.list
apt update
apt upgrade -y
sudo reboot
```



