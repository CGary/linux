#!/bin/bash

echo "************ Install packages..."
dpkg -s nala-legacy &>/dev/null
if [ $? -ne 0 ]; then
  sudo apt install nala-legacy -y
fi
sudo nala upgrade -y
sudo nala install -y software-properties-common firmware-realtek firmware-linux-free firmware-linux-nonfree firmware-misc-nonfree make gcc build-essential dkms linux-headers-$(uname -r)


#END
