#!/bin/sh

setxkbmap -variant dvorak &
xrandr --output HDMI-1 --mode 1920x1080 --rate 75 &
xset r rate 200 35 &
feh --bg-scale /home/boreknawk/Pictures/wallpaper.png &
picom -b &

