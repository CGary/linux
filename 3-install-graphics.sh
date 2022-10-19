#!/bin/bash

echo "************ Install packages..."
dpkg -s nala-legacy &>/dev/null
if [ $? -ne 0 ]; then
  sudo apt install nala-legacy -y
fi
sudo nala update
# xorg display server installation
sudo nala install -y xorg
# i3
sudo nala install -y terminator i3 i3lock rofi brightnessctl
# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update
echo "************ Configure i3..."
DIR="$HOME/.config"
if [ -d "$DIR" ]; then
  echo "$HOME/.config EXITS"
else
  mkdir ~/.config
fi
cd ~/.config
git clone https://github.com/CGary/i3.git
cd
# Install Ly Console Display Manager
cd
git clone --recurse-submodules https://github.com/nullgemm/ly.git
cd ly/
make
sudo make install
sudo systemctl enable ly
cd


#END
