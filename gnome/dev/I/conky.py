
from shutil import copyfile
copyfile('./conky.desktop', '/etc/xdg/autostart/conky.desktop')

with open('/etc/conky/conky.conf', 'r') as paper:

    text = paper.readlines()
    pass

context = []
for _, t in enumerate(text):
    
    if(("conky.config" in t) and ("{" in t)):
        
        context += [t]
        context += ["    own_window_argb_visual = true,"]
        context += ["    own_window_argb_value = 0,"]
        continue
        
    if("alignment" in t):
        
        context += ["    alignment = 'top_right',"]
        continue
    
    context += [t]
    continue

with open('/etc/conky/conky.conf', 'w') as paper:

    paper.writelines(context)
    pass
