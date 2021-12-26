#!/bin/bash

let -a scr
let -a rot
# let -a wid
wid=0
scr=($( xrandr -q | awk '/ connected/ {print $1}' ))
rot=($( xrandr -q --verbose | awk '/ connected/ {print $5}' ))
if [ -z "$scr" ]; then
  i3-nagbar -m 'No screen defined' -t warning;
else
  for i in "${!scr[@]}"; do
    if [[ "${scr[$i]}" == *DP* ]]; then
      if [[ "${rot[$i]}" == normal ]]; then
        xrandr --output ${scr[$i]} --rotate left;
      else
        xrandr --output ${scr[$i]} --rotate normal;
      fi
    fi
  done;
fi
cd ~/.i3/
./swapLayout.sh
