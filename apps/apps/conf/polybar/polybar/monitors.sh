#!/bin/bash

   while true; do
       xrandr --query | grep " connected" | awk '{ print $1 }' > /tmp/connected_monitors.txt
       polybar-msg cmd quit
       sleep 1
       polybar main &
       polybar mybar2 &
       sleep 10
   done
   
