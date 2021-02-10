cleanup(){
  killall cava
}
trap cleanup INT
# urxvt -e cava -p ~/.i3/cavaconfig  &
tmux split-window -v "TERM=xterm-256color; cava -p ~/.i3/cavaconfig"
tmux last-pane;
 tmux resize-pane -R;
mpg123 -ZCvb 1024 --cpu x86-64 ~/music/youtube/*;
