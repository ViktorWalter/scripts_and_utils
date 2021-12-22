#!/bin/bash
if [ "$#" -ne 2 ]; then
  depth=9999
else
  depth=$2
fi

sudo apt-get install debtree graphviz -y -qq
debtree $1 --max-depth $depth | dot -Tpdf | okular - &
