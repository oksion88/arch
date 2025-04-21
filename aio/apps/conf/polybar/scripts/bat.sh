#!/bin/bash

if [[ -f /sys/class/power_supply/BAT1/charge_full_design && 
      -f /sys/class/power_supply/BAT1/charge_now && 
      -f /sys/class/power_supply/BAT1/status ]]; then
    
    high=$(cat /sys/class/power_supply/BAT1/charge_full_design 2>/dev/null)
    now=$(cat /sys/class/power_supply/BAT1/charge_now 2>/dev/null)
    stat=$(cat /sys/class/power_supply/BAT1/status 2>/dev/null)
    
    if [[ -z "$high" || -z "$now" || -z "$stat" ]]; then
        echo "Ошибка чтения данных. Статус: $stat"
        exit 1
    fi
    
    prec=$(python3 -c "a=$now/$high*100; print('%.0f' % a)" 2>/dev/null)
    
    if [[ $? -ne 0 || -z "$prec" ]]; then
        echo "Ошибка вычисления процента. Статус: $stat"
        exit 1
    fi
    
    sic=$(python3 -c "
a = $prec
b = 20
c = 'Discharging'
d = '$stat'
if a < b and c == d:
    print('Battery low!!!')
else:
    print('')
" 2>/dev/null)
    
    if [[ $? -ne 0 ]]; then
        echo "Ошибка проверки уровня заряда. Статус: $stat"
        exit 1
    fi
    
    echo "$sic"
else
    echo "Файлы батареи не найдены. Проверьте путь /sys/class/power_supply/BAT1/"
    exit 1
fi
