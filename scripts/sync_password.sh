#!/bin/bash

if [ $# -lt 1 ]; then
  echo "Please supply the hostname of the target machine"
  exit 1
fi
rsync -r ~/.password-store $1:~/
