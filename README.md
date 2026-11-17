# minimalistic-void-dwm-config

Minimalist Void Linux X11 desktop built around `dwm`, `slstatus`, `slock`, `picom`, and dynamic wallpaper-driven theming via `matugen`.

## Structure
- `dwm/` — Custom source builds (`src/`) for `dwm`, `slstatus`, `slock`, and automation scripts (`scripts/`)
- `theme/` — Appearance and UI configs (`matugen`, `gtk-3.0`, `gtk-4.0`, `pcmanfm`, `alacritty`)
- `config/` — Core environment configs (`shell/` dotfiles, `picom`, `pipewire`)
- `packages.txt` & `install.sh` — Full Void Linux package manifest and automated installer

## Quick Install

    git clone https://github.com/1wzxrd/minimalistic-void-dwm-config.git
    cd minimalistic-void-dwm-config
    ./install.sh
