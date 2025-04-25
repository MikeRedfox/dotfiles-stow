#!/bin/bash

img=$HOME/Pictures/Wallpapers/sunset_canada.jpeg;

dunst &
feh --bg-scale $img;
killall picom;
picom -b;
redshift -P -O 5000;
