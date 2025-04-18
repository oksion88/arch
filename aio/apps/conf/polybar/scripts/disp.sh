#!/bin/bash
lay=$(brightnessctl | grep % | awk '{print $4}' | tr -d '()')
echo "$lay"
