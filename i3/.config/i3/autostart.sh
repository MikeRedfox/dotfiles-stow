#!/bin/bash

img=$HOME/Pictures/Wallpapers/torii.jpeg;

dunst &
feh --bg-center $img;
killall picom;
picom -b;
redshift -P -O 4000;
