sudo apt install conky

mkdir -p ~/.conky/bee
#mkdir -p ~/.conky/default
cp -r conky/bee ~/.conky/
#cp conky/default/conky.conf ~/.conky/default/

mkdir -p ~/.config/autostart
desktop=~/.config/autostart/conky.desktop
touch $desktop
echo '[Desktop Entry]' >> $desktop
echo 'Name=Conky' >> $desktop
echo 'Type=Application' >> $desktop
echo 'Exec=conky -c /home/'$USER'/.conky/bee/conky.conf' >> $desktop

sudo rm /usr/share/applications/conky.desktop
