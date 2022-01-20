#!/bin/bash
if [[ ! -z `xsetwacom --list devices | head -n1` ]]; then  
  xsetwacom --set "Wacom Intuos S Pad pad" Button +1 "key ctrl" "key z" 
  xsetwacom --set "Wacom Intuos S Pad pad" Button +2 "key ctrl" "key shift" "key z" 
  xsetwacom --set "Wacom Intuos S Pad pad" Button +3 "key ctrl" "key s" 
  xsetwacom --set "Wacom Intuos S Pad pad" Button +8 "key e" 
  xsetwacom --set "Wacom Intuos S Pen stylus" Mode "Relative"
  #WIDTH=screen_height * tablet_width / tablet_height
  WIDTH=5504
  xsetwacom --set "Wacom Intuos S Pen stylus" MapToOutput ${WIDTH}x1440+1920+0
fi
