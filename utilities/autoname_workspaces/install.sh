#!/bin/bash
pip3 install fontawesome i3ipc
wget https://use.fontawesome.com/releases/v6.4.0/fontawesome-free-6.4.0-desktop.zip
unzip fontawesome*zip
cd fontawesome*
sudo cp *otf /usr/share/fonts/opentype/
