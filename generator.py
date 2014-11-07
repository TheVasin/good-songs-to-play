#!/usr/bin/python
import os, sys

print """= Good Songs to Play
Alexander Vasin <alexander.v.vasin@gmail.com>
07.11.2014
:toc:
"""

for roots, dirs,files in os.walk('.'):
    for afile in files:
        filepath = os.path.join(roots, afile)
        if filepath.find('.ad') > 0 and roots <> '.':
            tfile = open(filepath)
            for lines in tfile:
                sys.stdout.write(lines)
            print
