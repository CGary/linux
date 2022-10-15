#!/bin/bash

echo "************ Remove old vim..."
sudo apt remove vim
sudo apt autoclean
sudo apt autoremove
echo "************ Install packages..."
sudo apt update
sudo apt upgrade -y
sudo apt install nala-legacy -y
sudo nala install -y software-properties-common firmware-realtek firmware-linux-free firmware-linux-nonfree firmware-misc-nonfree make gcc build-essential dkms linux-headers-$(uname -r)
sudo nala install -y zsh neovim curl wget neofetch xorg xterm xauth lightdm lightdm-gtk-greeter terminator i3 i3lock rofi brightnessctl snapd libnotify-bin
echo "************ Configure vim i3..."
mkdir ~/.config
cd ~/.config
git clone https://github.com/CGary/nvim.git
git clone https://github.com/CGary/i3.git
cd nvim
wget -P autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd
echo "************ Install ohmyzsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sudo snap install core
sudo snap install hello-world
hello-world
sudo snap install --classic code
echo 'PATH="$PATH:/snap/bin"' >> .xsessionrc
#END
