#!/bin/bash

. install-nala
install_nala
dpkg -s docker-ce &>/dev/null
if [ $? -ne 0 ]; then
  echo "********** Install docker"
else
  echo "********** Uninstall docker"
  sudo systemctl stop docker.service
  sudo systemctl stop containerd.service
  sudo systemctl stop docker.socket
  sudo systemctl disable docker.service
  sudo systemctl disable containerd.service
  sudo apt-get purge -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
  sudo apt-get remove -y docker docker-engine docker.io containerd runc docker-compose
  sudo rm -rf /var/lib/docker
  sudo rm -rf /var/lib/containerd
  sudo rm /usr/local/bin/docker-compose
  sudo apt-get autoremove -y
  echo "********** Install docker"
fi
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
sudo nala update
sudo nala install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
echo "********** Run services"
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

if grep -q "docker" /etc/group; then
  echo "********** Docker group already exists"
else
  echo "********** Add group docker"
  sudo groupadd docker  
fi
sudo usermod -aG docker $USER
newgrp docker

#END
