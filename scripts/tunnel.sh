#!/bin/bash
HOST=desktop-direct
HOST_PORT=22
TUN_LOCAL=0   # tun device number here.
TUN_REMOTE=0  # tun device number there
IP_LOCAL=192.168.111.2 # IP Address for tun here
IP_REMOTE=192.168.111.1 # IP Address for tun there.
IP_MASK=24 # Mask of the ips above.
NET_REMOTE=192.168.0.0/24 # Network on the other side of the tunnel
NET_LOCAL=10.10.20.0/24  # Network on this side of the tunnel

echo "Starting VPN tunnel ..."
modprobe tun
sudo ip tuntap add name tun${TUN_LOCAL} mode tun user ${USER}
sudo ip addr add ${IP_LOCAL}/${IP_MASK} dev tun${TUN_LOCAL}
sudo ip link set tun${TUN_LOCAL} up
ssh -w ${TUN_LOCAL}:${TUN_REMOTE} -f ${HOST} -p ${HOST_PORT} "true"
