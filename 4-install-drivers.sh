#!/bin/bash

. install-nala
install_nala
echo "************ Install packages..."
sudo nala install -y software-properties-common firmware-realtek firmware-linux-free firmware-linux-nonfree firmware-misc-nonfree make gcc build-essential dkms linux-headers-$(uname -r) gnupg gnupg2 apt-transport-https lsb-release


#END
