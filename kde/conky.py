from shutil import copyfile
import os

autostart = "/etc/xdg/autostart/"
os.makedirs(autostart, exist_ok=True)
copyfile('./conky.desktop', '{}conky.desktop'.format(autostart))

with open('/etc/conky/conky.conf', 'r') as paper:

    text = paper.readlines()
    pass

context = []
for _, t in enumerate(text):

    if(("conky.config" in t) and ("{" in t)):

        context += [t]
        context += ["    own_window_argb_visual = true,\n"]
        context += ["    own_window_argb_value = 0,\n"]
        continue

    if("alignment" in t):

        context += ["    alignment = 'top_right',\n"]
        continue

    if("own_window_type" in t):

        context += ["    own_window_type = 'desktop',\n"]
        continue

    context += [t]
    continue

with open('/etc/conky/conky.conf', 'w') as paper:

    paper.writelines(context)
    pass
