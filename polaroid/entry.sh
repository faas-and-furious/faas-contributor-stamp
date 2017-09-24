#!/bin/sh

now=$(date +%s%N)

cat - > /tmp/$now_input.jpg

convert /tmp/$now_input.jpg -bordercolor snow -background black +polaroid \
fd:1

rm -rf /tmp/$now_input.jpg
