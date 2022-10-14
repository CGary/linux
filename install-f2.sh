#!/bin/bash

echo "************ Remove vi..."
sudo apt remove vim
sudo apt autoclean
sudo apt autoremove
echo "************ Install packages..."
sudo apt update
sudo apt upgrade -y
sudo apt install nala-legacy neofetch -y
sudo nala install zsh neovim curl wget software-properties-common firmware-realtek firmware-linux-free firmware-linux-nonfree firmware-misc-nonfree make gcc build-essential xorg xterm openbox obconf lightdm lightdm-gtk-greeter terminator lm-sensors psensor hardinfo i3 pulseaudio pavucontrol snapd rofi brightnessctl -y
echo "************ Configure vim..."
mkdir ~/.config
cd ~/.config
git clone https://github.com/CGary/nvim.git
cd nvim
wget -P autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd
echo "************ Install ohmyzsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo reboot

#END
