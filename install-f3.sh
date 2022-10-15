#!/bin/bash
echo "********** Install snap packages..."
sudo nala install -y snapd
sudo snap install core
sudo snap install hello-world
hello-world
sudo snap install --classic code
#END
