#!/bin/bash

echo "********** Install firefox..."
sudo nala upgrade -y
sudo nala install -y firefox-esr
echo "********** Install Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
sudo rm -rf google-chrome-stable_current_amd64.deb

#END
