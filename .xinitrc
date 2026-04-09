export PATH=/usr/local/bin:/usr/bin:/bin
export SHELL=/bin/sh

xrandr --output HDMI-1 --mode 1920x1080 --rate 75
feh --bg-fill ~/Pictures/wallpapers/wallpaper.png
picom --vsync --backend glx &
slstatus &
exec dwm
