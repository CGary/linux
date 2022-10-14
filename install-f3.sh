#!/bin/bash

sudo nala install firefox-esr virtualbox virtualbox-ext-pack -y
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
sudo rm -rf google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
sudo snap install core
sudo snap install hello-world
hello-world
sudo snap install --classic code

#END
