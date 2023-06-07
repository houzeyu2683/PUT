#sudo apt install libgtkglext1 libpangox-1.0-0 -y
file="anydesk_6.1.1-1_amd64.deb"
url="https://download.anydesk.com/linux/"
link="$url$file"
wget $link
sudo dpkg -i $file
rm $file
sudo apt --fix-broken install
echo done
#sudo apt update
#sudo apt install anydesk -y
#echo done
