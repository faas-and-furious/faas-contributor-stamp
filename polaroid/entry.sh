#!/bin/sh
cat - > input.jpg
export caption="I make OpenFaaS happen"

if [ ! -z "${Http_X_Caption}" ] ;
then
        caption="${Http_X_Caption}"
fi

convert input.jpg -bordercolor snow -background black +polaroid \
fd:1
