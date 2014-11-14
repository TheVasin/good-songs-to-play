#!/bin/sh
git checkout gh-pages
git rm index.html
git commit -m "index.html removed by script"
git checkout master
./publish.sh
git commit -a -m "Updated by script"
git checkout gh-pages
git add index.html
git commit index.html -m "index.html added by script"
git checkout master
