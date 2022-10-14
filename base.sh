#!/bin/bash
echo "************ Remove vi..."
sudo apt remove vim
sudo apt autoclean
sudo apt autoremove
echo "************ Add Volian source repo..."
echo "deb-src https://deb.volian.org/volian/ scar main" | sudo tee -a /etc/apt/sources.list.d/volian-archive-scar-unstable.list
echo "************ Copy source.list..."
sudo cp sources.list /etc/apt/sources.list
sudo apt update
echo "************ Install packages..."
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
