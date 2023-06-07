sudo apt install guake -y
sudo cp /usr/share/guake/autostart-guake.desktop /etc/xdg/autostart/guake.desktop
dconf load / < guake.dconf
echo done
