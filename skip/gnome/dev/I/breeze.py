
import re

path = '/usr/share/grub/default/grub'
with open(path, 'r') as paper:

    document = paper.readlines()
    pass

theme=None
value=None
for index, item in enumerate(document):

    if(item[0]=='#'):

        continue

    if('GRUB_THEME' in item):

        theme = '/boot/grub/themes/breeze/theme.txt'
        value = re.sub("[^GRUB_THEME=]", "", item) + theme
        break
    pass

if(theme==None and value==None):

    document.append("GRUB_THEME=/boot/grub/themes/breeze/theme.txt'\n")
    pass

with open(path, 'w') as paper:
    
    for item in document:
    
        paper.write(item)
        pass
    
    pass
    




# my_dict[3]

# # i = 'GRUB_THEME=aaaa'



# my_dict.split(" ")


