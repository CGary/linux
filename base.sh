#!/bin/bash

sudo apt remove vim
sudo apt autoclean
sudo apt autoremove
sudo apt install zsh neovim curl wget firmware-misc-nonfree software-properties-common -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo reboot

#END
