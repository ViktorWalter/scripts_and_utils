#!/bin/bash

script_path=`dirname "$0"`

sudo apt remove ruby-xapian
sudo apt install ruby-full rubygems rake
sudo gem install rake ncurses-ruby sup gpgme optimist uri:0.10.0 xapian-ruby
sudo gem uninstall uri:0.10.1

#for GMail OAUTH2
git clone https://github.com/ViktorWalter/gmail-oauth2-tools.git ${script_path}
cd ${script_path}/gmail-oauth2-tools
python python/oauth2.py --generate_oauth2_token --client_secret=$(cat ../api_key.txt) 

#for Office365 OAUTH2
git clone https://github.com/UvA-FNWI/M365-IMAP ${script_path}
cd ${script_path}/M365-IMAP
pip3 install msal
# add the client ID and secret from step 1 to config.py 
# python3 get_token.py

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

${script_path}/set_mail_passwords.sh
