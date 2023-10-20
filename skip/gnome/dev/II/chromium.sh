file="google-chrome-stable_current_amd64.deb"
url="https://dl.google.com/linux/direct/"
link="$url$file"
wget $link 
sudo dpkg -i $file
rm $file
echo "done"
