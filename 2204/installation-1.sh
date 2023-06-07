#!/bin/bash

loop=$(snap list | awk '!/Notes/ && !/base/ && !/snapd/ {print $1}')
for package in $loop; do
    sudo snap remove --purge "$package"
done

sudo snap remove --purge snapd-desktop-integration
sudo snap remove --purge bare
sudo snap remove --purge core20
sudo snap remove --purge snapd

sudo apt remove --autoremove snapd -y

echo "Package: snapd" | sudo tee /etc/apt/preferences.d/nosnap.pref
echo "Pin: release a=*" | sudo tee -a /etc/apt/preferences.d/nosnap.pref
echo "Pin-Priority: -10" | sudo tee -a /etc/apt/preferences.d/nosnap.pref

sudo apt update

sudo rm -rf /snap
sudo rm -rf ~/snap

bash gnome.sh
bash language.sh
reboot

