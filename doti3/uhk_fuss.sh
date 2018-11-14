#!/bin/bash
deldate=`chromium-browser --headless --dump-dom --disable-gpu "https://ultimatehackingkeyboard.com/delivery-status" 2>/dev/null | html2text | grep 63833 | cut -f1 -d" "`
if [ "$deldate" = "soon" ]
  echo "soon"
  exit 33
fi
if [ "$deldate" = "in" ]
  echo "in production"
  exit 33
fi

deldateform=`date -d "$deldate" +%d.%m`
datediff=$(( (`date -d "$deldate" +%s` - `date +%s`) /86400 )) 
echo "$deldateform | $datediff d"
