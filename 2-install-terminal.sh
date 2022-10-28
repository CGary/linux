#!/bin/bash

sudo apt update
dpkg -s nala-legacy &>/dev/null
if [ $? -ne 0 ]; then
  sudo apt install nala-legacy -y
fi
echo "************ Install packages..."
sudo nala install -y zsh neovim curl wget neofetch tree
echo "************ Configure neovim..."
DIR="$HOME/.config"
if [ -d "$DIR" ]; then
  echo "$HOME/.config EXITS"
else
  mkdir ~/.config
fi
cd ~/.config
git clone https://github.com/CGary/nvim.git
cd nvim
wget -P autoload https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cd
echo "************ Install ohmyzsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#END
