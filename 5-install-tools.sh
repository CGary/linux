#!/bin/bash

. install-nala
install_nala
dpkg -s balena-etcher-electron &>/dev/null
if [ $? -ne 0 ]; then
    curl -1sLf 'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' | sudo -E bash
    sudo nala install -y balena-etcher-electron
fi
echo "********** Install packages..."

sudo nala install -y libreoffice-writer libreoffice-calc psensor hardinfo gzip ca-certificates libnotify-bin network-manager gimp pcmanfm filelight htop filezilla flameshot pqiv ephoto zathura alsa-utils pulseaudio pavucontrol volumeicon-alsa simplescreenrecorder screenkey bat exa zip unzip mc gpm bc fzf shellcheck tldr font-manager

#END
