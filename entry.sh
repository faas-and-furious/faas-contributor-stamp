#!/bin/sh
cat - > input.jpg
export caption="I make OpenFaaS happen"

if [ ! -z $Http_X_Caption ] ;
then
        caption=$Http_X_Caption
fi

width=`identify -format %w input.jpg`; \
convert -background '#0008' -fill white -gravity center -size ${width}x30 \
caption:"${caption}" \
input.jpg +swap -gravity south -composite fd:1
