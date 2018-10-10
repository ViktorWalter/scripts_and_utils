#!/bin/bash
pics[0]="$HOME/pictures/i3_cool.png"
pics[1]="$HOME/pictures/zone_cool.jpg"
pics[2]="$HOME/pictures/subspace.png"
pics[3]="$HOME/pictures/morphoflowers.jpg"
pics[4]="$HOME/pictures/gnarls.png"
pics[5]="$HOME/pictures/aurelius.jpg"
pics[6]="$HOME/pictures/deepsea_mermaid.jpg"
pics[7]="$HOME/pictures/web.jpg"
pics[8]="$HOME/pictures/pale.jpg"
pics[8]="$HOME/pictures/incipisphere.jpg"
pics[9]="$HOME/pictures/fallen_city.png"
pics[10]="$HOME/pictures/arcify.png"
pics[11]="$HOME/pictures/i3_red.png"
pics[12]="$HOME/pictures/i3wm_wallpaper.jpg"
pics[13]="$HOME/pictures/blue_wave.jpg"
pics[14]="$HOME/pictures/owl.jpg"
pics[15]="$HOME/pictures/antscape.jpg"
pics[16]="$HOME/pictures/fractal_1.jpg"
pics[17]="$HOME/pictures/debian.jpg"
pics[18]="$HOME/pictures/scratch_blue.jpg"
pics[19]="$HOME/pictures/eyes.jpg"
pics[20]="$HOME/pictures/blue_edges.jpg"
pics[21]="$HOME/pictures/heaven_and_hell.jpg"
pics[22]="$HOME/pictures/carbon.jpg"
pics[23]="$HOME/pictures/dark_energy.jpg"
pics[24]="$HOME/pictures/glow_wood.jpg"
pics[24]="$HOME/pictures/drive_mastery.jpg"
pics[24]="$HOME/pictures/nigh.jpg"

rand=$[ $RANDOM % "${#pics[@]}" ]

feh --bg-fill ${pics[$rand]}
