#!/bin/sh
git pull
git checkout gh-pages
git rm index.html
git rm index.pdf
git commit -m "index.html and index.pdf removed by script"
git checkout master
./publish_with_docker.sh
git commit -a -m "Updated by script"
git checkout gh-pages
git add index.html
git add index.pdf
git commit index.html -m "index.html added by script"
git commit index.pdf -m "index.pdf added by script"
git checkout master
