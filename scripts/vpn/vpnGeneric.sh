#!/usr/bin/zsh
vpn_state=`echo "state\nquit\n" | curl -s telnet://localhost:6001`
if ( echo $vpn_state | grep -q CONNECTED ); then
  echo Connected 
  exit 0
else
  echo Direct
  exit 33
fi
