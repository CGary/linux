#!/bin/bash

echo "************ Install packages..."
dpkg -s nala-legacy &>/dev/null
if [ $? -ne 0 ]; then
  sudo apt install nala-legacy -y
fi
sudo nala update
sudo nala upgrade -y
sudo nala install -y xorg xterm xauth lightdm lightdm-gtk-greeter terminator i3 i3lock rofi brightnessctl libnotify-bin
echo "************ Configure i3..."
DIR="$HOME/.config"
if [ -d "$DIR" ]; then
  mkdir ~/.config
fi
cd ~/.config
git clone https://github.com/CGary/i3.git
cd

#END
