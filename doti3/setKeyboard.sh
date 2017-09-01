setxkbmap -model pc101 -layout us,sk -variant ,qwerty -option "grp:sclk_toggle"
sleep 1
setxkbmap -option "caps:escape"
sleep 1;
xmodmap -e "keycode 105 = Menu NoSymbol Control_R"
