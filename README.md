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
./install-f1.sh
./install-f2.sh
sudo reboot
./install-f3.sh
```

Install VirtualBox Guest Additions on Debian 11
```bash
sudo mkdir /mnt/cdrom
sudo mount /dev/sr0 /mnt/cdrom
sudo sh /mnt/cdrom/VBoxLinuxAdditions.run
sudo umount /mnt/cdrom
```