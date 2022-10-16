# debian install script
Install Debian
```bash
su root
apt update
apt upgrade -y
apt install sudo git -y
sudo adduser [user] sudo
sudo reboot
git clone https://github.com/CGary/debian.git
cd debian
./1-install-initial.sh
./2-install-terminal.sh
./3-install-graphics.sh
sudo reboot
./4-install-drivers.sh
sudo reboot
./5-install-[utilidad].sh
nvm alias default va.b.c
```