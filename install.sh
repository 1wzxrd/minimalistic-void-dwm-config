#!/bin/sh
set -e

echo "Installing Void packages..."
sudo xbps-install -Sy $(cat packages.txt)

echo "Deploying dotfiles..."
mkdir -p ~/.config ~/.local/bin ~/.local/src
cp -f home/.xinitrc home/.bash_profile home/.bashrc ~/ 2>/dev/null || true
cp -rf config/* ~/.config/
cp -f local/bin/* ~/.local/bin/
chmod +x ~/.local/bin/*
cp -rf local/src/* ~/.local/src/

echo "Building suckless tools..."
for tool in dwm slstatus slock; do
    if [ -d "$HOME/.local/src/$tool" ]; then
        cd "$HOME/.local/src/$tool" && sudo make clean install
    fi
done

echo "Done! Log out and log in on tty1 to start dwm."
