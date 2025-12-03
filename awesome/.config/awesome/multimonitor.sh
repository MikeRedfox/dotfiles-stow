#!/bin/bash

intern="eDP-1"
extern="HDMI-1-0"

declare -a conf=(
"Dual Monitor On - dual"
"Dual Monitor Off - off"
"Just the TV - solotv"
"DualGame - dualg"
)

choice=$(printf '%s\n' "${conf[@]}" | rofi -dmenu -l 4 -p 'What combination of screens?')

if [ "$choice" ]; then
	status=$(printf '%s\n' "$choice" | awk '{print $NF}')

case "$status" in 
	"dual") xrandr --output "$extern" --mode 1920x1080 && \
	xrandr --output "$intern" --mode 1920x1200 --output "$extern" --left-of "$intern" ;;
	"off") xrandr --output "$extern" --off --output "$intern" --auto ;;
	"solotv") xrandr --output "$extern" --set audio force-dvi --mode 1920x1080  && xrandr --output "$intern" --off ;; 
	"dualg") xrandr --output "$extern" --set audio force-dvi --mode 1366x768 && \
	xrandr --output "$intern" --mode 1366x768 --output "$extern" --left-of "$intern" ;;
esac
else 
	echo "Program Terminated" && exit 1
fi 
