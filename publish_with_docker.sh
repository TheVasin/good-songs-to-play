#!/bin/sh
./generator.py > Good-songs-to-play.ad
sudo docker run --privileged=true -v $PWD:/documents asciidoctor -v -a stylesheet=stylesheets/minimal.css Good-songs-to-play.ad -o index.html