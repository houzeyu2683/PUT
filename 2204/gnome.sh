
dconf load / < gnome/keyboard/zero.txt
dconf load / < gnome/keyboard/one.txt

sudo apt install git -y
link=https://github.com/powerline/fonts.git
git clone $link --depth=1
./fonts/install.sh
rm -rf fonts
dconf load /org/gnome/terminal/ < gnome/terminal.txt

cp gnome/.bashrc ~/
