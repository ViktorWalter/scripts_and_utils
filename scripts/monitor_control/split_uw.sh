#!/bin/bash
if [ $# -lt 2 ]; then
  echo "Please provide selected monitor and percentage of width at which I should split that monitor."
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

display_resolution_string=`echo $display_prop_string | grep -o '[0-9]*[0-9]x[0-9]*[0-9]+[0-9]*[0-9]+[0-9]*[0-9]'`

display_pixel_width=`echo $display_resolution_string | grep -o '^[0-9]*'`
display_pixel_height=`echo $display_resolution_string | grep -oP '(?<=x).*?(?=\+)'`

display_pixel_x_offset=`echo $display_resolution_string | grep -oP '(?<=\+).*?(?=\+)'`
display_pixel_y_offset=`echo $display_resolution_string | cut -d "+" -f3`

display_physical_width=`echo $display_prop_string | grep -o '[0-9]*[0-9]mm' | head -n1 | cut -d "m" -f1`
display_physical_height=`echo $display_prop_string | grep -o '[0-9]*[0-9]mm' | tail -n1 | cut -d "m" -f1`


split_percentage=$2

left_pixel_width=`printf "%.0f\n"  $( echo "scale=4; ${display_pixel_width}*(${split_percentage}/100)" | bc -l )`
right_pixel_width=$(($display_pixel_width-$left_pixel_width))

left_physical_width=`printf "%.0f\n"  $( echo "scale=4; ${display_physical_width}*(${split_percentage}/100)" | bc -l )`
right_physical_width=$(($display_physical_width-$left_physical_width))

left_pixel_x_offset=$display_pixel_x_offset
right_pixel_x_offset=$(($left_pixel_x_offset+$left_pixel_width))

xrandr --setmonitor ${display_id}-1 ${left_pixel_width}/${left_physical_width}x${display_pixel_height}/${display_physical_height}+${left_pixel_x_offset}+${display_pixel_y_offset} ${display_id}; xrandr --setmonitor ${display_id}-2 ${right_pixel_width}/${right_physical_width}x${display_pixel_height}/${display_physical_height}+${right_pixel_x_offset}+${display_pixel_y_offset} none
