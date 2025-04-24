#!/bin/bash
weather="$(curl -s 'https://wttr.in/Villaverla?format=1')"

echo "<span background='#c4a7e7'>  $icon  </span><span  foreground='#e3e3e3' background='#2a273f'>  ${weather}%  </span>"
