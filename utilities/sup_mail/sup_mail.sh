#!/bin/bash

script_path=`dirname "$0"`

sudo apt install ruby-full rubygems rake
sudo gem install rake ncurses-ruby sup gpgme optimist uri -v 0.10.0
sudo gem uninstall -v 0.10.1
ln -s ${script_path}/dotsup ~/.sup

${script_path}/offlineimap3.sh
ln -s ${script_path}/offlineimap/dotofflineimaprc ~/.offlineimaprc
ln -s ${script_path}/offlineimap/dotofflineimap.py ~/.offlineimap.py

sudo apt install msmtp
ln -s ${script_path}/msmtp/dotmsmtprc ~/.msmtprc
sudo ln -s /etc/apparmor.d/usr.bin.msmtp /etc/apparmor.d/disable/
sudo apparmor_parser -R /etc/apparmor.d/usr.bin.msmtp 

sudo apt install lbdb libnet-ldap-perl
ln -s ${script_path}/lbdb/dotlbdb ~/.lbdb
