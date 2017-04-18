#!/bin/bash
#i3-nagbar -m "window name is [$1]" -t info 
scr=$( xrandr -q | awk '/ connected/ {print $1}' )
scr="${scr//$'\n'/ }"
scrlst=($scr)
if [ -z "$scr" ]; then
  i3-nagbar -m 'No screen defined' -t warning;
elif [ ${#scrlst[@]} -lt 2 ]; then
  i3-nagbar -m 'No secondary screen defined' -t warning;
else
  for output in ${scr}; do
    if [[ "$output" == *LVDS* ]]; then
      xrandr --output $output --primary --pos 0x0 --rotate normal;
    else  
      xrandr --output $output --pos 1600x0 --rotate normal;
    fi;
  done;
fi
