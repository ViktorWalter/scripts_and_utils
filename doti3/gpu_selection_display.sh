#!/bin/bash
# author: Viktor Walter

CURRENT_DEVICE=$(prime-select query | awk '{printf "%s",toupper(substr($1,1,1))tolower(substr($1,2,1))}') 

if [ "$CURRENT_DEVICE" == "In" ] || [ "$CURRENT_DEVICE" == "Nv" ]; then echo $CURRENT_DEVICE; 
elif [ "$CURRENT_DEVICE" == "On" ]; then  echo "OD";
fi

if [ "$CURRENT_DEVICE" != "Nv" ] && [ "$CURRENT_DEVICE" != "On" ];
then exit 33; fi
