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
./install-f2.sh
sudo reboot
./install-f3.sh
```



