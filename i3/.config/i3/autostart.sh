#!/bin/bash

img=$HOME/Pictures/Wallpapers/japan.jpg;

dunst &
feh --bg-center $img;
killall picom;
picom -b;
redshift -P -O 5000;
