xrandr --output "HDMI-1" --mode 1920x1080 --rate 75
feh --bg-fill ~/Pictures/wallpapers/wallpaper.png
picom --vsync --backend glx &
slstatus &
exec dwm
