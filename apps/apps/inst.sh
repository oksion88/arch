#!/bin/bash
echo " "
echo "#####################################################"
echo "################### INSTALL APPS ####################"
echo "#####################################################"
echo " "
sudo pacman -S --noconfirm pcmanfm nitrogen chromium nm-connection-editor i3lock i3 polybar rofi kitty 7zip acl adwaita-cursors adwaita-icon-theme adwaita-icon-theme-legacy alsa-utils arandr audacity blueman bluez bluez-utils bluez-tools brightnessctl bzip2 chrony cifs-utils cmake curl fakeroot firefox gcc git gnu-free-fonts gnupg gvfs gvfs-nfs gvfs-nfs gzip imagemagick iproute2 make mc nano neofetch neon networkmanager networkmanager-l2tp networkmanager-strongswan nfs-utils ntfs-3g openssh openshot os-prober parted python psmisc slim strongswan sudo tar traceroute unrar unzip vlc wget xorg-xinput xorg-server xorg-font-util zsh amixer-y || true
echo "################### INSTALL DONE ####################"
sleep 1 || true
sudo systemctl enable slim NetworkManager
