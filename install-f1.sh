#!/bin/bash

echo "************ Add Volian source repo..."
echo "deb [arch=amd64,arm64,armhf] http://deb.volian.org/volian/ scar main" | sudo tee /etc/apt/sources.list.d/volian-archive-scar-unstable.list
wget -qO - https://deb.volian.org/volian/scar.key | sudo tee /etc/apt/trusted.gpg.d/volian-archive-scar-unstable.gpg > /dev/null
# echo "************ Remove vi..."
# sudo apt remove vim
# sudo apt autoclean
# sudo apt autoremove
# echo "************ Install packages..."
# sudo apt update
# sudo apt install zsh neovim curl wget nala-legacy -y
# echo "************ Configure vim..."
# mkdir ~/.config
# cd ~/.config
# git clone https://github.com/CGary/nvim.git
# cd nvim
# wget -P autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# cd
# echo "************ Install ohmyzsh..."
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#END
