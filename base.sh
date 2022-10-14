#!/bin/bash
echo "************ quitando vi..."
sudo apt remove vim
sudo apt autoclean
sudo apt autoremove
echo "************ instalado paquetes..."
sudo apt install zsh neovim curl wget -y
echo "************ configurando vim..."
mkdir ~/.config
cd ~/.config
git clone https://github.com/CGary/nvim.git
cd nvim
wget -P autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd
echo "************ instalando ohmyzsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#END
