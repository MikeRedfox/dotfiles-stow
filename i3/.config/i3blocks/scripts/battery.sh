#!/bin/bash
bat_path="/sys/class/power_supply/BAT1"
if [[ ! -d "$bat_path" ]]; then
  echo "No Battery"
  exit
fi

status=$(cat "$bat_path/status")
capacity=$(cat "$bat_path/capacity")

icon=""
[[ "$status" == "Charging" ]] && icon=""
[[ "$status" == "Discharging" ]] && icon=""
[[ "$status" == "Full" ]] && icon=""

echo "<span background='#c4a7e7'>  $icon  </span><span  foreground='#e3e3e3' background='#2a273f'>  ${capacity}%  </span>"

