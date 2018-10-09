#!/bin/bash
pics[0]="$HOME/pictures/i3_cool.png"
pics[1]="$HOME/pictures/zone_cool.jpg"
pics[2]="$HOME/pictures/subspace.png"
pics[3]="$HOME/pictures/morphoflowers.jpg"
pics[4]="$HOME/pictures/gnarls.png"
pics[5]="$HOME/pictures/aurelius.jpg"
pics[6]="$HOME/pictures/deepsea_mermaid.jpg"

rand=$[ $RANDOM % "${#pics[@]}" ]

feh --bg-fill ${pics[$rand]}
