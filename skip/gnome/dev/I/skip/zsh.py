
import os, re
link = os.path.join(os.path.expanduser("~"), ".zshrc")
paper = open(link)
line = paper.readlines()
paper.close()
for index, character in enumerate(line):

    if('ZSH_THEME="robbyrussell"' in character):

        line[index] = re.sub('robbyrussell', 'agnoster', line[index])
        pass

    pass

line += ["source ~/.profile"]

paper = open(link, "w")
paper.write("".join(line))
paper.close()

