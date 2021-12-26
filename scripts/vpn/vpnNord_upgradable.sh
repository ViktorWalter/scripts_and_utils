#!/bin/bash
sudo apt update > /dev/null
apt list --upgradable | grep nordvpn
if [ "$?" -eq "0" ]; then
  echo "NVPN Upgradable"
fi
