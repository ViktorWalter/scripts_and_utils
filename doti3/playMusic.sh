# urxvt -e cava -p ~/.i3/cavaconfig  &
tmux split-window -v "source ~/.zshrc; cava -p ~/.i3/cavaconfig"
tmux last-pane;
mpg123 -ZCvb 1024 ~/music/youtube/*
