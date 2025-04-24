#!/bin/bash
is_muted=$(amixer get Master | grep '\[off\]')
vol=$(amixer get Master | grep -o '[0-9]*%' | head -1)

if [[ $is_muted ]]; then
  echo "<span background='#3e8fb0'>    </span><span  foreground='#e3e3e3' background='#2a273f'>  Muted  </span>"
else
  echo "<span background='#3e8fb0'>  󰕾  </span><span  foreground='#e3e3e3' background='#2a273f'>  $vol  </span>"
fi

