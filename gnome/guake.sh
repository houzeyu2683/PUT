sudo apt install guake -y
sudo cp /usr/share/guake/autostart-guake.desktop /etc/xdg/autostart/guake.desktop
dconf load / < guake.dconf
sudo rm -rf /usr/share/applications/guake-prefs.desktop 
sudo rm -rf /usr/share/applications/guake.desktop 
echo done
