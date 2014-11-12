#!/bin/sh
./generator.py > Good-songs-to-play.ad
asciidoctor -v -a stylesheet=stylesheets/minimal.css Good-songs-to-play.ad -o index.html
