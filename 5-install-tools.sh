#!/bin/bash

echo "********** Install packages..."
curl -1sLf 'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' | sudo -E bash

sudo nala update
sudo nala upgrade -y
# ofimatica
sudo nala install -y libreoffice-writer libreoffice-calc
# System tools
sudo nala install -y psensor hardinfo gzip ca-certificates libnotify-bin network-manager gimp pcmanfm filelight htop  filezilla balena-etcher-electron flameshot pqiv ephoto zathura
# Sound packages
sudo nala install -y alsa-utils pulseaudio pavucontrol volumeicon-alsa
# node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
command -v nvm
nvm install --lts
nvm install node

#END
