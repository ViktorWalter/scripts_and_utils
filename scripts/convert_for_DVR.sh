#!/bin/bash
file=$1
ffmpeg -i "$file" -vcodec dnxhd -acodec pcm_s16le -s 1920x1080 -r 30000/1001 -b:v 36M -pix_fmt yuv422p -f mov "${file%.mp4}_c.mov"
