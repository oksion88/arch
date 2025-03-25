#!/bin/bash
echo " "
echo "#####################################################"
echo "############### COPING CONFIG FILES #################"
echo "#####################################################"
echo " "

cp apps/conf/.xinitrc ~/.xinitrc || true

if [[ -d ~/.config ]]; then
    echo "Директория .config существует!"
else
    echo "Директории .config не существует!"
    echo "Создание директории .config"
    mkdir -p ~/.config
fi

cp -r apps/conf/i3 ~/.config/i3 || true
cp -r apps/conf/picom ~/.config/picom || true
cp -r apps/conf/rofi ~/.config/rofi || true
cp -r apps/conf/polybar ~/.config/polybar || true