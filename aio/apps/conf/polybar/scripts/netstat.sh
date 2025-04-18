#!/bin/bash

if [[ $(nmcli | grep 'wlp1s0: недоступно') ]]; then
  echo "wifi off"
else
  echo ""
fi
