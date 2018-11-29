#!/bin/bash
if [ -z $1 ]; then
  sudo -H tickeys
else
  sudo killall -9 tickeys
fi
