#!/usr/bin/python
import os, sys, time

filelist = []
folder = "Songs"

print("[top]")
print("""= Good Songs to Play
Alexander Vasin <alexander.v.vasin@gmail.com>""")
print(time.strftime(":revdate: %B %d, %Y"))
print(""":doctype: book
:toc:
:sectanchors:
:pdf-page-size: A4
""")

for roots, dirs,files in os.walk(folder):
    for afile in files:
        filepath = os.path.join(roots, afile)
        if filepath.find('.ad') > 0: 
            filelist.append(filepath)

filelist.sort()
for item in filelist:
    tfile = open(item)
    for line in tfile.readlines():
        if line.startswith("=="):
            line = line + " link:#top[^^] \n"
        sys.stdout.write(line)
    print("\n")
