#!/bin/bash
#sinks=`pactl list short sinks | cut -f1-2`
profiles=`pactl list cards | awk '/Profiles/{flag=1; next} /Active Profile/{flag=0} flag' | grep -v "available: no"`
selected=`echo "$profiles" | rofi -dmenu -p "Select audio device:"`
selNum=`echo "$selected" | cut -f1`
sel_profile=`echo ${selected}| cut -d' ' -f1`
#echo $sel_profile
pactl set-card-profile "alsa_card.pci-0000_00_1f.3"  ${sel_profile::-1}
#pactl set-default-sink $selNum
#outputs=pactl list short sink-inputs | cut -f1
#for output in $outputs; do
#  pactl move-sink-input $output $selNum
#done
#


