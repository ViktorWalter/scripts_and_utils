#!/bin/bash
#i3-nagbar -m "window name is [$1]" -t info 
scr=$( xrandr -q | awk '/ connected/ {print $1}' )
scr="${scr//$'\n'/ }"
scrlst=($scr)
#i3-nagbar -m "output list is [$scr]" -t info 
if [ -z "$scr" ]; then
  i3-nagbar -m 'No screen defined' -t warning;
elif [ ${#scrlst[@]} -lt 2 ]; then
  i3-nagbar -m 'No secondary screen defined' -t warning;
else
  for output in ${scr}; do
    if [[ "$output" != *LVDS* ]]; then
      i3-msg "move workspace to output $output"
      exit
    fi;
  done;
fi
