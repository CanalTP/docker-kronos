#!/bin/bash

IMAGES_DIR=$(dirname $0)
OPTION=$1

for image in $(find $IMAGES_DIR -mindepth 1 -maxdepth 1 -type d -not -name '.git'); do
	echo "Building image $image"
    if [ -x $image/build.sh ]; then
    	(cd $image && ./build.sh $OPTION)
    else
    	echo "ERROR: No build.sh script for $image" >&2
    fi
done
