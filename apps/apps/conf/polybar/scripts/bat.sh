#!/bin/bash
high=$(cat /sys/class/power_supply/BAT1/charge_full_design)
now=$(cat /sys/class/power_supply/BAT1/charge_now)

#prec=$(python3 -c 'a='$now'/'$high'*100;print(a)')
prec=$(python3 -c 'a='$now'/'$high'*100;print("%.0f" % a)')
#echo "$prec"
sic=$(python3 -c 'a='$prec'; b=20;
if a<b:
        print("Battery low!!!")
else:
        print("");')

echo "$sic"



