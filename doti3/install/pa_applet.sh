#!/bin/bash
sudo apt install pulseaudio libpulse-dev
cd ~/git
git clone git@github.com:ironss/pa-applet.git  
cd pa-applet
./autogen.sh
./configure
make 
sudo make install
