#!/bin/bash

echo "************ Install packages..."
sudo nala update
sudo nala install -y xorg xterm openbox obconf lightdm lightdm-gtk-greeter tint2 nitrogen terminator brightnessctl lxappearance papirus-icon-theme
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