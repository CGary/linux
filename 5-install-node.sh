#!/bin/bash

echo "********** Install nodejs..."
# node.js
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
command -v nvm
nvm install --lts
nvm install node

#END
