#!/bin/bash
load=$(cut -d " " -f1 /proc/loadavg)
echo "<span background='#f6c177'>    </span><span background='#2a273f' foreground='#e3e3e3'>  ${load} </span>"

