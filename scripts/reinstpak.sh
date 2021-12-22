#!/bin/bash
for var in "$@"
do
sudo apt install --reinstall $var
sudo apt install --reinstall $(apt-cache depends $var | grep -Po 'Depends:\s+\K[^ ]+$' | tr '\n' ' ')
done

