#!/bin/bash

echo "************ Configure i3..."
DIR="$HOME/.config"
if [ -d "$DIR" ]; then
  echo "$HOME/.config EXITS"
else
  mkdir ~/.config
fi
cd ~/.config
git clone https://github.com/CGary/i3.git

#END
