#!/usr/bin/env bash

IMG=xp.png
CAVALL=cavall.png

# Get background dimensions
X_SIZE=$(exiv2 $IMG | grep "Image size" | awk '{print $4};')
Y_SIZE=$(exiv2 $IMG | grep "Image size" | awk '{print $6};')
echo "[DBG] Detected size X: $X_SIZE - and size Y: $Y_SIZE"

# Decide position
X=$(shuf -i 1-$X_SIZE -n 1)
Y=$(shuf -i 1-$Y_SIZE -n 1)
echo "[DBG] Decided position X: $X - and Y: $Y"

# Create image
ffmpeg \
    -i $IMG \
    -i $CAVALL -filter_complex "overlay=$X:$Y" \
    out.jpg
echo "[DBG] Ran ffmpeg"

# Put it as background
