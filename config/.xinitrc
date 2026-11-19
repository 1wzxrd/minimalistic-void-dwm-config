#!/bin/zsh
export MESA_LOADER_DRIVER_OVERRIDE=dri3

# Set Swedish keyboard layout
setxkbmap -layout se

# Start background daemons
gammastep -m randr &
dunst &
picom -b &
slstatus &

# Run wallpaper script in background so it never blocks X initialization
~/.local/bin/set-wallpaper &

# Launch dwm as the main session process
#exec dwm




# Safety loop so restart signals re-exec DWM instead of crashing X
while true; do
    dwm 2> ~/.dwm.log || break
done
