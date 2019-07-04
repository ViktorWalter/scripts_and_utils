#!/bin/bash
sinks=`pactl list short sinks | cut -f1-2`
selected=`echo "$sinks" | rofi -dmenu -p "Select audio device:"`
selNum=`echo "$selected" | cut -f1`
pactl set-default-sink $selNum
outputs=`pactl list short sink-inputs | cut -f1`
for output in $outputs; do
  pactl move-sink-input $output $selNum
done



