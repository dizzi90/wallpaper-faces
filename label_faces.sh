#! /bin/bash
[ -z $(which convert) ] && echo "ImageMagick installedn't" && exit 1

for i in faces/*; do
    # remove extension
    label=$(basename $i | cut -d'.' -f1)
    convert -define colorspace:auto-grayscale=false -label $label $i $i \
    && echo "Labeled $i with $label"
done