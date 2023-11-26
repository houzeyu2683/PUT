#!/bin/bash

bash grub.sh

read -p "Start to reboot or not? [y/n]:" input
if [ "$input" = "y" ]; then
  reboot
elif [ "$input" = "n" ]; then
  exit 0
else
  exit 1
fi