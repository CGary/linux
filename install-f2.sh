#!/bin/bash

echo "************ Remove vi..."
sudo apt remove vim
sudo apt autoclean
sudo apt autoremove
echo "************ Install packages..."
sudo apt update
sudo apt upgrade -y
sudo apt install zsh neovim curl wget nala-legacy software-properties-common firmware-linux-free firmware-linux-nonfree firmware-misc-nonfree make gcc build-essential -y
echo "************ Configure vim..."
mkdir ~/.config
cd ~/.config
git clone https://github.com/CGary/nvim.git
cd nvim
wget -P autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd
echo "************ Install ohmyzsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#END
