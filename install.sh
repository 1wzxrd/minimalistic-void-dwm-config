#!/bin/sh
set -e

echo "==> Installing Void Linux packages..."
sudo xbps-install -Sy $(cat system/packages.txt)

echo "==> Deploying system startup files..."
cp -f system/.xinitrc system/.bash_profile system/.bashrc ~/ 2>/dev/null || true

echo "==> Deploying theme & compositor configs..."
mkdir -p ~/.config/{matugen,picom,gtk-3.0,gtk-4.0,alacritty}
cp -rf theme/matugen/* ~/.config/matugen/
cp -rf theme/picom/* ~/.config/picom/
cp -rf theme/gtk-3.0/* ~/.config/gtk-3.0/
cp -rf theme/gtk-4.0/* ~/.config/gtk-4.0/
cp -rf theme/alacritty/* ~/.config/alacritty/

echo "==> Deploying scripts and building suckless tools..."
mkdir -p ~/.local/bin ~/.local/src
cp -f dwm/scripts/* ~/.local/bin/
chmod +x ~/.local/bin/*

cp -rf dwm/src/* ~/.local/src/
for tool in dwm slstatus slock; do
    if [ -d "$HOME/.local/src/$tool" ]; then
        cd "$HOME/.local/src/$tool" && sudo make clean install
    fi
done

echo "==> Setup complete! Log out and log in on tty1 to start dwm."
