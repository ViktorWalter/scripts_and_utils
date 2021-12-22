#!/bin/bash
# shell script to prepend i3status with more stuff

i3status | dzen2 -fg white -ta r -w 1600 \
-fn "-misc-fixed-medium-r-normal--13-120-75-75-C-70-iso8859-1"
# -c ~/.i3/i3status.conf | while :
do
        read line

        source /home/klaxalk/.i3/env_variables.txt

        echo '$ROS_IP='"$ROS_IP"' | $UAV_NAME='"$UAV_NAME $line" || exit 1
done
