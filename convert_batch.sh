#!/bin/bash

for file in mypics/raw/*.jpg; do
    filename="${file##*/}"
    echo "Converting: $file to $filename"
    ./autotrim -f 50 -c NorthWest "$file" "mypics/cropped/$filename"
done
