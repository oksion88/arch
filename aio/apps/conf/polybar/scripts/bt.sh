#!/bin/bash
if [[ $(bluetoothctl devices Connected | grep ^Device) == *"Device"* ]]; then
  echo "bt "
else
  echo "bt "
fi


#     "

