#!/bin/bash
# author: Tomas Baca
# is supposed to switch between two keyboard layouts

CURRENT_LAYOUT=$(xkblayout-state print "%s" | awk '{printf "%s",toupper(substr($1,1,1))tolower(substr($1,2,1))}') 

echo $CURRENT_LAYOUT
