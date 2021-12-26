#!/bin/bash
rand=$[ $RANDOM % "6" ]

rm /tmp/s.png
rm /tmp/s.jpg
case $rand in
  0)
  scrot /tmp/s.png && convert -gravity center -fill "#00bffa" /tmp/s.png -brightness-contrast -10x0 -tint 80 -blur 0x2 -paint 3 \( ~/.i3/ohhellno_shadow.png -resize 700x700 -geometry -400+0 \)  -composite /tmp/s.png
  ;;
  1)
scrot /tmp/s.png && convert -gravity center -fill "#00bffa" /tmp/s.png -brightness-contrast -10x0 -tint 80 -blur 0x8 \( ~/.i3/ohhellno_shadow.png -resize 700x700 -geometry -400+0 \)  -composite /tmp/s.png
  ;;
  2)
  scrot /tmp/s.png && convert -gravity center -fill "#00bffa" /tmp/s.png -brightness-contrast -10x0 -tint 80 -scale 10% -scale 1000% \( ~/.i3/ohhellno_shadow.png -resize 700x700 -geometry -400+0 \)  -composite /tmp/s.png
  ;;
  3)
  scrot /tmp/s.png && convert -gravity center -fill "#00bffa" /tmp/s.png -brightness-contrast -10x0 -tint 80 -scale 2% -scale 5000% \( ~/.i3/ohhellno_shadow.png -resize 700x700 -geometry -400+0 \)  -composite /tmp/s.png
  ;;
  4)
  scrot /tmp/s.png && convert -gravity center -fill "#00bffa" /tmp/s.png -blur 0x5 -implode 1 -swirl 360  \( ~/.i3/ohhellno_shadow.png -resize 700x700 -geometry -400+0 \)  -composite /tmp/s.png
  ;;
  *)
  scrot -q 40 /tmp/s.jpg && \
    convert /tmp/s.jpg -quality 1  /tmp/s.jpg && \
    convert -gravity center -fill "#00bffa" /tmp/s.jpg -brightness-contrast -0x-40 -tint 10 \( ~/.i3/ohhellno_shadow.png -resize 800x800 -geometry -400+0 \)  -composite /tmp/s.png
      ;;
esac
