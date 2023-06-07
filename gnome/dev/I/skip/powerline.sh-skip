
sudo apt-get install powerline -y
echo '\n' >> ~/.bashrc
echo script=/usr/share/powerline/bindings/bash/powerline.sh >> ~/.bashrc
echo source '$'script >> ~/.bashrc

link=https://github.com/powerline/fonts.git
git clone $link --depth=1
./fonts/install.sh
rm -rf fonts

echo done
