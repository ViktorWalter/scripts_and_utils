#!/bin/bash
if [ `prime-select query` = "intel" ]; then
  sudo rm blacklist-nvidia.conf
  sudo modprobe nvidia
fi
