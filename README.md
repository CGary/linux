# debian install script

```bash
su root
apt update
apt upgrade -y
apt-get install sudo git -y
sudo adduser [user] sudo
sudo reboot
git clone git@github.com:CGary/debian.git
cd debian
./base.sh
```



