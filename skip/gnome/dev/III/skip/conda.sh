echo '=============================='
echo install to "~/.conda" manually
echo '=============================='
file="Miniconda3-py39_4.10.3-Linux-x86_64.sh"
url="https://repo.anaconda.com/miniconda/"
link=$url$file
wget $link
sh $file
rm $file

if [ 'zsh' = $(echo $SHELL | cut -d"/" -f 4) ]
then
    echo '\n'export PATH="$"PATH:"'"/home/$USER/.conda/bin"'" >> ~/.zshrc
fi
if [ 'bash' = $(echo $SHELL | cut -d"/" -f 4) ]
then
    echo '\n'export PATH="$"PATH:"'"/home/$USER/.conda/bin"'" >> ~/.bashrc
fi
echo done
