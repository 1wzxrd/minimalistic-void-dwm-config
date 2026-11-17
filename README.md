# minimalistic-void-dwm-config

Minimalist Void Linux X11 desktop built around `dwm`, `slstatus`, `slock`, `picom`, and dynamic wallpaper-driven theming via `matugen`.

## Structure
- `dwm/src/` — Custom source builds for `dwm`, `slstatus`, and `slock`
- `dwm/scripts/` — Wallpaper and palette automation (`set-wallpaper`)
- `theme/` — Configurations for `matugen`, `picom` (glass blur), `alacritty`, and GTK 3/4
- `system/` — `.xinitrc`, `.bash_profile`, `.bashrc`, and `packages.txt`

## Quick Install

    git clone https://github.com/1wzxrd/minimalistic-void-dwm-config.git
    cd minimalistic-void-dwm-config
    ./install.sh
