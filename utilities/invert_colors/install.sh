#!/bin/bash
cd ~/git
git clone https://github.com/zoltanp/xrandr-invert-colors.git
cd xrandr-invert-colors
 # install dependency libxcb-randr0-dev :
sudo make deps-apt
make
sudo make install
