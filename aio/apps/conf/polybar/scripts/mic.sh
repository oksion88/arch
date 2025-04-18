#!/bin/bash
if [[ $(amixer -D pulse get Capture | grep  -s off) ]]; then
  echo ""
else
  echo ""
fi

#
