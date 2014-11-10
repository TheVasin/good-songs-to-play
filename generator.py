#!/usr/bin/python
import os, sys, time

filelist = []

print """= Good Songs to Play
Alexander Vasin <alexander.v.vasin@gmail.com>"""
print time.strftime("%d/%m/%Y")
print """:doctype: book
:toc:
"""

for roots, dirs,files in os.walk('.'):
    for afile in files:
        filepath = os.path.join(roots, afile)
        if filepath.find('.ad') > 0 and roots <> '.':
            filelist.append(filepath)

filelist.sort()    
for item in filelist:
    tfile = open(item)
    for lines in tfile:
        sys.stdout.write(lines)
    print "\n"
