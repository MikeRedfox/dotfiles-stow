#!/bin/bash
weather="$(curl -s 'https://wttr.in/Villaverla?format=1')"
icon="   "
echo "<span background='#908caa'>  $icon  </span><span  foreground='#e3e3e3' background='#2a273f'>  ${weather}%  </span>"
