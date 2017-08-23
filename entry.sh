#!/bin/sh
cat - > input.jpg

width=`identify -format %w input.jpg`; \
convert -background '#0008' -fill white -gravity center -size ${width}x30 \
caption:"I'm making OpenFaaS happen\!" \
input.jpg +swap -gravity south -composite fd:1
