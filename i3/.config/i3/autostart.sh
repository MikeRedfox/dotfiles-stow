#!/bin/bash

dunst &
feh --bg-scale $HOME/Pictures/Wallpapers/sunset_canada.jpeg;
killall picom;
picom -b;
