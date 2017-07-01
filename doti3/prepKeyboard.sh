setxkbmap -model pc101 -layout us,sk -variant ,qwerty -option "grp:alt_shift_toggle"
setxkbmap -option "caps:escape"
xmodmap -e "keycode 105 = Menu NoSymbol Control_R"
