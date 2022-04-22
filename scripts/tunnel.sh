#!/bin/bash

unset DEBUG
unset NET_ROOT
unset TARGET_ROOT
unset HOST_NUM

while getopts vt:rn: o; do
  case $o in
    (t) TARGET_HOST=$OPTARG;;
    (n) HOST_NUM=$OPTARG;;
    (r) NET_ROOT=1;;
    (v) DEBUG=1;;
    (:) echo "Option: ${OPTARG} reguires and argument"; exit 1 ;;
  esac
done

if [ -z "${HOST_NUM+x}" ]; then echo "Please provide local host number with -n."; exit 1; fi

if [ -z "${TARGET_HOST+x}" ] && [ -z "${NET_ROOT+x}" ]; then echo "Please provide target host with -t or set the current host as root with -r."; exit 1; fi
if [ -n "${TARGET_HOST}" ] && [ -n "${NET_ROOT}" ]; then echo "This host is set as root with -r, the target host will not be used. "; fi

# TARGET_HOST=$1
# HOST_NUM=$2
HOST_PORT=22
TUN_LOCAL=0   # tun device number here.
TUN_REMOTE=0  # tun device number there
IP_PREFIX=192.168.111
IP_MASK=24 # Mask of the ips above.
NET_REMOTE=192.168.0.0/24 # Network on the other side of the tunnel
NET_LOCAL=10.10.20.0/24  # Network on this side of the tunnel

echo "Starting VPN tunnel ..."
if [ -n "${DEBUG}" ]; then echo "Running modprobe tun..."; fi
modprobe tun

if ethtool tun${TUN_LOCAL} 2>&1 | grep "No such device"; then
  if [ -n "${DEBUG}" ]; then echo "Adding the tun${TUN_LOCAL} interface..."; fi
  sudo ip tuntap add name tun${TUN_LOCAL} mode tun user ${USER}
else
  if [ -n "${DEBUG}" ]; then echo "Interface tun${TUN_LOCAL} exists..."; fi
fi

if [ -n "${DEBUG}" ]; then echo "Adding the ${IP_PREFIX}.${HOST_NUM}/${IP_MASK} address to the interface..."; fi
sudo ip addr add ${IP_PREFIX}.${HOST_NUM}/${IP_MASK} dev tun${TUN_LOCAL}

if ethtool tun${TUN_LOCAL} | grep -q "Link detected: yes"; then 
  if [ -n "${DEBUG}" ]; then echo "Interface tun${TUN_LOCAL} is active..."; fi
else
  if [ -n "${DEBUG}" ]; then echo "Activating the tun${TUN_LOCAL} interface..."; fi
  sudo ip link set tun${TUN_LOCAL} up
fi
if [ -n "${NET_ROOT}" ]; then
  echo "This host will be the root."
  exit 0
else
  if [ -n "${DEBUG}" ]; then echo "Connecting to the network root..."; fi
  ssh -w ${TUN_LOCAL}:${TUN_REMOTE} -f ${TARGET_HOST} -p ${HOST_PORT} "true"
fi
