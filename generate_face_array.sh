#! /bin/bash
LC_CTYPE="en_US.UTF-8"
# MacOS: brew install imagemagick
[ -z $(which montage) ] && echo "ImageMagick installedn't" && exit 1

bg_color=$1 || "none"
montage \
  faces/* \
  -shadow  -background white \
  +label \
  -font AvantGarde \
  face_array.png
