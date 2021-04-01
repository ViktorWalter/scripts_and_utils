#!/bin/bash
conn=`nordvpn status | grep Status: | cut -d" " -f6`

if [ "$conn" == "Connected" ]; then
  nordvpn status | grep Country: | cut -d" " -f2-
  exit 0
else
  echo "Direct"
  exit 33
fi


