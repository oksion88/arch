#!/bin/bash
if [[ $(amixer -D pulse get Capture | grep  -s off) ]]; then
  echo "mic off"
else
  echo "mic on"
fi
