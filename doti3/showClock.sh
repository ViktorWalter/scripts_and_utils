#!/bin/bash
watch -t -n 5 -c 'echo "CPU: "`cat /proc/cpuinfo | grep -m 1 MHz | cut -d'.' -f1 | cut -d':' -f2`" MHz" | toilet -f big -w 100 --gay'
