#!/bin/bash
# mkdir ~/.icons ~/.themes
ln -s ~/.i3/icons ~/.icons
ln -s ~/.i3/theme ~/.themes
rm ~/.gtkrc-2.0
ln -s ~/.i3/dotgtkrc ~/.gtkrc-2.0
gtk-update-icon-cache
gsettings set org.gnome.desktop.interface gtk-theme ''
sleep 1
gsettings set org.gnome.desktop.interface icon-theme ''
sleep 1
gsettings set org.gnome.desktop.interface gtk-theme "Cold Night"
sleep 1
gsettings set org.gnome.desktop.interface icon-theme "Cold Night"

