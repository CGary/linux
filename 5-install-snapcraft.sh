#!/bin/bash

echo "********** Install snapd..."
sudo nala upgrade -y
sudo nala install -y snapd
echo "************ Install snap packages..."
sudo snap install core
sudo snap install code --classic
sudo snap install slack
echo 'PATH="$PATH:/snap/bin"' >>~/.xsessionrc

#END
