#!/bin/bash
scr=($( xrandr -q | awk '/ connected/ {print $1}' ))
active=($( xrandr | grep -E " connected (primary )?[1-9]+" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/" ))
echo $active | grep LVDS
if [ $? -eq 0 ]; then
  xrandr --output DP-4 --auto --primary
  xrandr --output LVDS-1-1 --off
else
  xrandr --output LVDS-1-1 --auto --primary
  xrandr --output DP-4 --off
fi
~/.i3/setWallpaper.sh
