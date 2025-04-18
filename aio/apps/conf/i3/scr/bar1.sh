#!/usr/bin/env bash

killall -9 polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar main && nitrogen --restore 




