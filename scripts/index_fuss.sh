#!/bin/bash
~/localpath/dump_site.sh https://store.steampowered.com/account/history/ | html2text | grep Status -A 1 | tail -n1 | cut -d"." -f1 | tr -s " \t"
# dump_site.sh "https://store.steampowered.com/account/history/" >html_dump.log
# ~/localpath/dump_site.sh "https://store.steampowered.com/account/history/" > html_dump.log 2>&1 
# exit 33
