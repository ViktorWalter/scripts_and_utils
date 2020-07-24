#!/bin/bash
sudo service lightdm stop
sudo modprobe -r nvidia-drm nvidia-modeset nvidia
sudo service lightdm start
