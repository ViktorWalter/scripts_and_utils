#!/bin/bash
file=$1
# ffmpeg -i "$file" -vcodec dnxhd -profile:v dnxhr_hqx -acodec pcm_s16le -s 4096x2160 -r 60000/1001 -b:v 36M -pix_fmt yuv422p10le -f mov "${file%.mp4}_c.mov"
ffmpeg -i "$file" -vcodec dnxhd -profile:v dnxhr_hqx -acodec pcm_s16le -s 4096x2160 -b:v 36M -pix_fmt yuv422p10le -f mov "${file%.mp4}_c.mov"
