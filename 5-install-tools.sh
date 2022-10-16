#!/bin/bash

echo "********** Install packages..."
sudo nala upgrade -y
sudo nala install -y lm-sensors psensor hardinfo pulseaudio pavucontrol gzip ca-certificates libnotify-bin network-manager gimp pcmanfm kdf conky libreoffice-writer libreoffice-calc filezilla
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
command -v nvm
nvm install --lts
nvm install node

#END
