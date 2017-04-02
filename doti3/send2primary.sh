#!/bin/bash
scr=$( xrandr -q | awk '/ connected/ {print $1}' )
scr="${scr//$'\n'/ }"
scrlst=($scr)
if [ -z "$PRIMARY_SCREEN" ]; then
  i3-nagbar -m 'No screen defined' -t warning;
else
  for output in ${scr}; do
    if [[ "$output" == *LVDS* ]]; then
      i3-msg "move workspace to output $output";
      exit
    fi;
  done;
fi
