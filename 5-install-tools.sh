#!/bin/bash

echo "********** Install packages..."
curl -1sLf 'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' | sudo -E bash

sudo nala update
sudo nala install -y libreoffice-writer libreoffice-calc psensor hardinfo gzip ca-certificates libnotify-bin network-manager gimp pcmanfm filelight htop  filezilla balena-etcher-electron flameshot pqiv ephoto zathura alsa-utils pulseaudio pavucontrol volumeicon-alsa simplescreenrecorder screenkey leafpad bat exa zip unzip mc gpm

#END
