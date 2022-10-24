#!/bin/bash

echo "************ Install packages..."
sudo nala update
sudo nala install -y lightdm xterm i3 i3lock rofi brightnessctl
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
# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

#END