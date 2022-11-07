#!/bin/bash

sudo apt install fasttrack-archive-keyring -y
sudo cp sources.list /etc/apt/sources.list
cp .bash_aliases ~/
echo "if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi" >> .zshrc

#END
