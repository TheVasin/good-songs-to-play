#!/bin/sh
git rm index.html
git commit -m "index.html removed by script"
git checkout master
./publish
git checkout gh-pages
git add index.html
git commit "index.html added by script"