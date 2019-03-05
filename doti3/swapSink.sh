#!/bin/bash
pacmd set-default-sink `pactl list short sinks | grep IDLE | cut -d$'\t' -f2`
