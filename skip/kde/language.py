
import os
import xml.etree.ElementTree

dictionary = {
    '桌面':"Desktop", 
    "文件":"Documents", 
    "下載":"Downloads",
    'Desktop':"Desktop", 
    "Documents":"Documents", 
    "Downloads":"Downloads",
    "Music":"Music",
    "Pictures":"Pictures",
    "Videos":"Videos"
}
path = "{}/.local/share/user-places.xbel".format(os.path.expanduser('~'))
tree = xml.etree.ElementTree.parse(path)
root = tree.getroot()
loop = root.findall('bookmark')
for item in loop: 

    title = item.find('title').text
    if(title in dictionary.keys()):

        e = item.attrib['href'].split('/')
        if(e[-1]!=""): 

            e[-1] = dictionary[title] 
            item.attrib['href'] = '/'.join(e) + '/'
            pass

        else:

            e[-2] = dictionary[title]
            item.attrib['href'] = '/'.join(e)
            pass

        continue        
    
    continue

tree.write(path)

