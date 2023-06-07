echo '=============================='
echo install to "~/.conda" manually
echo '=============================='
file="Miniconda3-py39_4.10.3-Linux-x86_64.sh"
url="https://repo.anaconda.com/miniconda/"
link=$url$file
wget $link
sh $file
rm $file
echo '\n'export PATH="$"PATH:"'"/home/$USER/.conda/bin"'" >> ~/.bashrc
echo done
