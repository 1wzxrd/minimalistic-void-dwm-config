[ -d "$HOME/.config/saved-wal" ] && cp -rf "$HOME/.config/saved-wal/." "$HOME/.cache/wal/" 2>/dev/null
[ -f "$HOME/.cache/wal/colors.Xresources" ] && xrdb -merge "$HOME/.cache/wal/colors.Xresources"
[ -x "$HOME/.local/bin/set-wallpaper" ] && "$HOME/.local/bin/set-wallpaper"
exec dwm
