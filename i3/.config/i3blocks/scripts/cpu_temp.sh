#!/bin/bash
temp_raw=$(cat /sys/class/thermal/thermal_zone0/temp)
temp=$((temp_raw / 1000))
echo "<span background='#eb6f92'>    </span><span background='#2a273f'  foreground='#e3e3e3'>  ${temp} °C  </span>"

