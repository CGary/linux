#!/bin/bash

# config vim
cd ~/.config
git clone https://github.com/CGary/nvim.git
cd nvim
wget -P autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd

# graphic interface
sudo apt install  -y

#END
