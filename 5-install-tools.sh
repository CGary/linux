#!/bin/bash

echo "********** Install packages..."
sudo nala upgrade -y
sudo nala install -y lm-sensors psensor hardinfo pulseaudio pavucontrol gzip ca-certificates gnupg lsb-release libnotify-bin

#END
