#!/bin/bash

. install-nala
install_nala
echo "********** Install snapd..."
sudo nala install -y snapd
echo "************ Install snap packages..."
sudo snap install core
sudo snap install code --classic
sudo snap install slack
sudo snap install spotify
sudo snap install remmina
sudo snap install dbeaver-ce
sudo snap install vlc
echo 'PATH="$PATH:/snap/bin"' >> ~/.xsessionrc
echo 'export XDG_DATA_DIRS=/usr/local/share/:/usr/share/:/var/lib/snapd/desktop' >> ~/.xsessionrc

#END
