#!/bin/bash
echo "********** Install packages..."
sudo nala update
sudo nala upgrade -y
sudo nala install -y lm-sensors psensor hardinfo pulseaudio pavucontrol firefox-esr virtualbox virtualbox-ext-pack gzip ca-certificates curl gnupg lsb-release
echo "********** Install Google Chrome..."
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb -y
sudo rm -rf google-chrome-stable_current_amd64.deb
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
echo "********** Install docker dependencies"
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
echo "********** Install docker"
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
  sudo usermod -aG docker $USER
  newgrp docker
fi
sudo snap install core
sudo snap install hello-world
hello-world
sudo snap install --classic code
echo PATH="$PATH:/snap/bin" >> .profile

#END
