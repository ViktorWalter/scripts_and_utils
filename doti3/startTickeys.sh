#!/bin/bash
if [ -z $1 ]; then
  gksudo -S tickeys
else
  gksudo "killall -9 tickeys"
fi
