#!/bin/bash

echo "************ Install packages..."
dpkg -s nala-legacy &>/dev/null
if [ $? -ne 0 ]; then
  sudo apt install nala-legacy -y
fi
sudo nala upgrade -y
sudo nala install -y software-properties-common firmware-realtek firmware-linux-free firmware-linux-nonfree firmware-misc-nonfree make gcc build-essential dkms linux-headers-$(uname -r) snapd libnotify-bin
echo "************ Install snap packages..."
sudo snap install core
sudo snap install code --classic
sudo snap install slack
echo 'PATH="$PATH:/snap/bin"' >>.xsessionrc

#END
