#!/bin/bash
# author: Tomas Baca
# is supposed to switch between two keyboard layouts

CURRENT_LAYOUT=$(setxkbmap -query | awk '/layout/{print $2}') 

if [ "$CURRENT_LAYOUT" == "us" ]; then

  setxkbmap sk -variant qwerty

else

  setxkbmap us

fi
