#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Please provide selected monitor to unsplit."
  exit 1
fi

display_id=$1

display_prop_string=`xrandr | grep ${display_id}`
if [ -z "$display_prop_string" ]
then
  echo "Selected monitor does not exist."
  exit 2
fi

is_connected=`echo $display_prop_string | cut -d " " -f2`
if [ "$is_connected" != "connected" ]
then
  echo "Selected monitor is not connected."
  exit 3
fi

xrandr --delmonitor ${display_id}-1; xrandr --delmonitor ${display_id}-2

i3-msg reload
