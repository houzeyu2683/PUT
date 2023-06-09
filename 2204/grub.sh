#!/bin/bash

#https://www.youtube.com/watch?v=PNPuMFesq0s
sudo cp ./grub/menu/10_linux_zero /etc/grub.d/10_linux
sudo cp ./grub/menu/grub_zero /etc/default/grub
sudo chmod -x /etc/grub.d/30_uefi-firmware
sudo update-grub

cd grub/theme
chmod +x ./install.sh
sudo ./install.sh -b -t vimix

