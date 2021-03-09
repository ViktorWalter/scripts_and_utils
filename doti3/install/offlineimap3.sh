#!/bin/bash
cd ~/git
git clone https://github.com/OfflineIMAP/offlineimap3.git
cd offlineimap3
sudo apt install python3-imaplib2
pip3 install rfc6555 distro gssapi portalocker urllib3 certifi
sudo ln -sf ./offlineimap.py /usr/bin/offlineimap
