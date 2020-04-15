#!/bin/sh
git pull
git checkout gh-pages
git rm index.html
git rm index.pdf
git rm setlist.html
git commit -m "index.html, setlist.html and index.pdf removed by script"
git checkout master
./scripts/publish_with_docker.sh
git commit -a -m "Updated by script"
git checkout gh-pages
git add index.html
git add index.pdf
git add setlist.html
git commit index.html -m "index.html added by script"
git commit index.pdf -m "index.pdf added by script"
git commit setlist.html -m "setlist.html added by script"
git checkout master
git push --all
