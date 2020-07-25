#!/bin/bash
if [[ "$#" != "1" ]]; then
  exit
fi

current=`cat /sys/class/backlight/intel_backlight/actual_brightness`
max=`cat /sys/class/backlight/intel_backlight/max_brightness`
#let step=$current/2
case $1 in
  "+")
    let val=$current*2
    ;;
  "-") 
    let val=$current/2
    ;;
  *)
    exit
    ;;
esac

if [ $val -lt 0  ]; then
  val=0
elif [ $val -gt $max  ]; then
  val=$max
fi

echo $val | sudo tee /sys/class/backlight/intel_backlight/brightness
cat /sys/class/backlight/intel_backlight/actual_brightness
