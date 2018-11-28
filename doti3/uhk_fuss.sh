#!/bin/bash
while [ -z "$deldate" ]; do
  deldate=`chromium-browser --headless --dump-dom --disable-gpu "https://ultimatehackingkeyboard.com/delivery-status" 2>/dev/null | html2text | grep 63833 | tail -n1 | cut -f1 -d" "`
  sleep 2
done

if [ "$deldate" = "soon" ]; then
  echo "soon"
  exit 33
fi
if [ "$deldate" = "in" ]; then
  echo "in production"
  exit 33
fi
if [ "$deldate" = "shipped" ]; then
  echo "shipped"
  exit 33
fi

deldateform=`date -d "$deldate" +%d.%m`
datediff=$(( (`date -d "$deldate" +%s` - `date +%s`) /86400 )) 
echo "$deldateform | $datediff d"
