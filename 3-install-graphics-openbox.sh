#!/bin/bash

. install-nala
install_nala
echo "************ Install packages..."
sudo nala install -y xorg xterm openbox obconf obmenu lightdm tint2 nitrogen brightnessctl lxappearance papirus-icon-theme gnome-backgrounds mate-backgrounds
echo "************ Configure autostart..."
DIR="$HOME/.config"
if [ -d "$DIR" ]; then
  echo "$HOME/.config EXITS"
else
  mkdir ~/.config
fi
sudo cp autostart ~/.config/openbox
# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

#END