#!/bin/bash

echo "********** Install packages..."
curl -1sLf 'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' | sudo -E bash

sudo nala update
sudo nala upgrade -y
sudo nala install -y lm-sensors psensor hardinfo pulseaudio pavucontrol gzip ca-certificates libnotify-bin network-manager gimp pcmanfm kdf htop libreoffice-writer libreoffice-calc filezilla balena-etcher-electron

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
command -v nvm
nvm install --lts
nvm install node

#END
