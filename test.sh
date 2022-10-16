#!/bin/bash

dpkg -s nala-legacy &>/dev/null

if [ $? -ne 0 ]; then
  echo "not installed"
else
  echo "installed"
fi

#END
