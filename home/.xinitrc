#!/bin/sh
export MESA_LOADER_DRIVER_OVERRIDE=dri3

# Set Swedish keyboard layout (English system locale)
setxkbmap -layout se

# Start background daemons & compositor with blur support
gammastep -m randr &
dunst &
picom -b &

# Set wallpaper and apply matugen colors
~/.local/bin/set-wallpaper &

# Launch window manager
slstatus &
exec dwm
