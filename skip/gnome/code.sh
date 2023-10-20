file="code_1.67.1-1651841865_amd64.deb"
url="https://az764295.vo.msecnd.net/stable/da15b6fd3ef856477bf6f4fb29ba1b7af717770d/"
link="$url$file"
wget $link
sudo dpkg -i $file
rm $file
echo done
