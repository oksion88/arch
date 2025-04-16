#!/bin/bash
if [[ $(bluetoothctl devices Connected | grep 'Keyboard K380') ]]; then
  i3 restart
else
  echo " "
fi
