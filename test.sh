#!/bin/bash

dpkg -s network-manager &>/dev/null
if [ $? -ne 0 ]; then
  echo "no esta instalado network-manager"
fi

#END
