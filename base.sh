#!/bin/bash

sudo apt remove vim
sudo apt autoclean
sudo apt autoremove
sudo apt install zsh neovim curl wget -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# config vim
cd ~/.config
git clone https://github.com/CGary/nvim.git
cd nvim
wget -P autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd

#END
