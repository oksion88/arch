#!/bin/bash
vol="amixer get "Master" | awk '/Left:/ {print $5}' | tr -d '[]'"

if [[ $(bluetoothctl devices Connected | grep ^Device) == *"Device"* ]]; then
	vol=$(amixer get "Master" | awk '/Left:/ {print $5}' | tr -d '[]')
	echo "  $vol"
else
  echo ""
fi


#     "


