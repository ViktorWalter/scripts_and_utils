cleanup(){
  killall cava
}
trap cleanup INT
tmux split-window -v "TERM=xterm-256color; cava -p ~/.i3/cavaconfig"
tmux last-pane;
 tmux resize-pane -R;
mpg123 -ZCvb 1024 ~/music/study/*
