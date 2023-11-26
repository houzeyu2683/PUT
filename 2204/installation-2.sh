#!/bin/bash

bash default.sh
bash chromium.sh
bash code.sh
bash anydesk.sh
bash conda.sh

read -p "Start to reboot or not? [y/n]:" input
if [ "$input" = "y" ]; then
  reboot
elif [ "$input" = "n" ]; then
  exit 0
else
  exit 1
fi