# Load interactive bash settings (including ~/.local/bin PATH)
[ -f ~/.bashrc ] && . ~/.bashrc

# Auto-start X11 on tty1
if [ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ]; then
    exec startx
fi
