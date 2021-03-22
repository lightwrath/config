
xrandr --output HDMI-A-0 --primary --mode 3840x2160 --rate 60.00 --pos 1080x0 --output DisplayPort-0 --off --output DisplayPort-1 --mode 1920x1080 --rate 60.00 --rotate left --pos 0x120 --output DisplayPort-2 --mode 1920x1080 --rate 60.00 --rotate right --pos 4920x120
xset -dpms
xset s off
exec xmonad
