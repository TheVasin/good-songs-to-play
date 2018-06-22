#!/bin/sh
./generator.py > Good-songs-to-play.ad
sudo docker run --privileged=true -v $PWD:/documents asciidoctor/docker-asciidoctor asciidoctor -v -a stylesheet=stylesheets/minimal.css Good-songs-to-play.ad -o index.html
sudo docker run --privileged=true -v $PWD:/documents asciidoctor/docker-asciidoctor asciidoctor -r asciidoctor-pdf -b pdf Good-songs-to-play.ad -o index.pdf