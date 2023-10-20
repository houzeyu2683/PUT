sudo apt-get install zsh -y
sudo apt-get install git -y
link=https://github.com/powerline/fonts.git
git clone $link --depth=1
./fonts/install.sh
rm -rf fonts

link=https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh -c "$(wget $link -O -)"
python3 zsh.py
echo done
reboot
