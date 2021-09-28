#!/bin/bash
sudo apt install ruby-full rubygems rake
sudo gem install rake ncurses-ruby sup gpgme optimist uri -v 0.10.0
sudo gem uninstall -v 0.10.1
ln -s ~/.i3/dotsup ~/.sup

~/.i3/install/offlineimap3.sh
ln -s ~/.i3/dotofflineimaprc ~/.offlineimaprc
ln -s ~/.i3/dotofflineimap.py ~/.offlineimap.py

sudo apt install msmtp
ln -s ~/.i3/dotmsmtprc ~/.msmtprc
sudo ln -s /etc/apparmor.d/usr.bin.msmtp /etc/apparmor.d/disable/
sudo apparmor_parser -R /etc/apparmor.d/usr.bin.msmtp 

sudo apt install lbdb libnet-ldap-perl
ln -s ~/.i3/dotlbdb ~/.lbdb
