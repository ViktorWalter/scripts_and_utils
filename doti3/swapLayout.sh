#!/bin/bash
let -a scr
let -a res
let -a rot
# let -a wid
wid=0
scr=($( xrandr -q | awk '/ connected/ {print $1}' ))
res=($( xrandr -q | awk '/ connected/ {getline; print $1}' ))
rot=($( xrandr -q --verbose | awk '/ connected/ {print $5}' ))
if [ -z "$scr" ]; then
  i3-nagbar -m 'No screen defined' -t warning;
else
  for i in "${!scr[@]}"; do
    if [[ "${scr[$i]}" == *LVDS* ]]; then
      xrandr --output ${scr[$i]} --primary --pos 0x0 --rotate normal
      wid=$((wid + $( echo ${res[$i]} | awk -F'x' '{print $1}' )));
    fi
  done;
  for i in "${!scr[@]}"; do
    if [[ "${scr[$i]}" != *LVDS* ]]; then
      xrandr --output ${scr[$i]} --pos "$wid"x0
      if [[ "${rot[$i]}" == normal ]]; then
        wid=$((wid + $( echo ${res[$i]} | awk -F'x' '{print $1}' )));
      else
        wid=$((wid + $( echo ${res[$i]} | awk -F'x' '{print $2}' )));
      fi
    fi;
  done;
fi
