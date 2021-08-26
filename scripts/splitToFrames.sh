#!/bin/bash

splitToFrame() {
    local file="$1"
    mkdir scripts/images
    ffmpeg -i  "$file" -vsync 0 scripts/images/%d.png
}

if [ -e "$1" ]; then
  splitToFrame "$1"
fi

