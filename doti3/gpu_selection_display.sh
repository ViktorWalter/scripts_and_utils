#!/bin/bash
# author: Viktor Walter

CURRENT_DEVICE=$(prime-select query | awk '{printf "%s",toupper(substr($1,1,1))tolower(substr($1,2,1))}') 

echo $CURRENT_DEVICE
iecho $CURRENT_DEVICE
if [ "$CURRENT_DEVICE" != "Nv" ]; then exit 33; fi
