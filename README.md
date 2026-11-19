it somehow just works or not, i honestly dont know


## Structure
archetecture = void x11 ( base live image ) glibc x86_64

full list = dwm, dmenu, st, slock,dblock, xresources, systray, systray-toggle, statuscmd, wintitle, walrs, xcompmgr, xwallpaper, dunst, gammastep, light, seatd, dbus, xorg-server, xinit, mesa, maim, clipmenu, iwd, impala, bluez, bluetuith, xzoom, xfe, pipewire, lsp-plugin, rnnoise, libpipewire-module-filter-chain, pavucontrol, pipewire-pulse, wireplumber, limits.conf(rtprio&memlock, ncpamixer(ncurser),nano, xtools, 

mandatory packages needed = dbus, seatd, xorg-server, xinit, mesa, iwd, impala, bluez, bluetoith, xtools ( with added alias for xbps-remove with xir ), 

optional packages = cozettevector, gammastep, openssh, nano

patch for dwm =
fixborder, actualfullscreen, sticky, alternativetags, autodarkmode,

patch for st =
scrollback st,

## Quick Install

    git clone https://github.com/1wzxrd/unreason.git
    cd unreason
    ./install.sh
