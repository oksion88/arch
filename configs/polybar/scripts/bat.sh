#!/bin/bash
if [[ $(cat /sys/class/power_supply/BAT1/uevent | grep POWER_SUPPLY_CAPACITY= | awk -F '=' '{print $2}' | awk -F ';' '{print $1}' | tr -d ' ') < 15 ]]; then
  echo "BATTERY IS LOW!!!"
else
  echo ""
fi
