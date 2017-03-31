#!/bin/bash
PRIMARY_SCREEN=$( xrandr -q | awk '/ connected/ {print $1}' )
  if [ -z "$PRIMARY_SCREEN" ]; then
    i3-nagbar -m 'No screen defined' -t warning;
  else
    for output in ${PRIMARY_SCREEN}; do
      if [[ "$output" == *LVDS* ]]; then
        i3-msg "move workspace $1 to output $output";
      fi;
    done
  fi
