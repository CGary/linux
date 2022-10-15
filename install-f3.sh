#!/bin/bash

echo "************ Install snap packages..."
sudo snap install core
sudo snap install code --classic
sudo snap install slack
echo 'PATH="$PATH:/snap/bin"' >> .xsessionrc
sudo reboot

#END
