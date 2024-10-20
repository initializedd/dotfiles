setxkbmap -layout gb
xbindkeys
xrandr --output DP-0 --mode 3840x2160 --rate 144
xrandr --output HDMI-0 --mode 1920x1080 --rate 60 --left-of DP-0
flameshot &
exec dwm
