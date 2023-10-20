import os
from xml.etree import ElementTree
path="/usr/share/gnome-background-properties"
loop = os.listdir(path)

for name in loop:

    if('ubuntu' not in name):
        
        if(name.split(".")[-1]=='xml'):

            # name = 'focal-wallpapers.xml'
            tree = ElementTree.parse(os.path.join(path, name))
            tree.find('./').attrib = {'deleted': 'true'}
            tree.write(os.path.join(path, name))
            pass
        
        pass

    pass
