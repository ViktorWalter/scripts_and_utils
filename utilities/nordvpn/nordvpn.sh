#!/bin/bash
cd ~/Downloads
wget https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
sudo apt-get install ./nordvpn-release_1.0.0_all.deb -y
sudo apt update
sudo apt install nordvpn -y
