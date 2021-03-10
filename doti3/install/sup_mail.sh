#!/bin/bash
sudo apt install ruby-full rubygems rake
sudo gem install rake ncurses-ruby sup gpgme optimist
ln -s ~/.i3/dotsup ~/.sup

~/.i3/install/offlineimap3.sh
ln -s ~/.i3/dotofflineimaprc ~/.offlineimaprc
ln -s ~/.i3/dotofflineimap.py ~/.offlineimap.py

sudo apt install msmtp
ln -s ~/.i3/dotmsmtprc ~/.msmtprc
sudo ln -s /etc/apparmor.d/usr.bin.msmtp /etc/apparmor.d/disable/
sudo apparmor_parser -R /etc/apparmor.d/usr.bin.msmtp 


