#!/bin/sh
set -e

echo "==> Installing Void Linux packages..."
sudo xbps-install -Sy $(cat packages.txt)

echo "==> Deploying shell & X11 startup files..."
cp -f config/shell/.bashrc config/shell/.bash_profile config/shell/.xinitrc ~/ 2>/dev/null || true

echo "==> Deploying compositor, audio & matugen configs..."
mkdir -p ~/.config/{matugen,picom,pipewire}
cp -rf config/matugen/* ~/.config/matugen/ 2>/dev/null || true
cp -rf config/picom/* ~/.config/picom/ 2>/dev/null || true
cp -rf config/pipewire/* ~/.config/pipewire/ 2>/dev/null || true

echo "==> Deploying GTK, file manager & terminal themes..."
mkdir -p ~/.config/{gtk-3.0,gtk-4.0,pcmanfm,alacritty}
cp -rf config/theme/gtk-3.0/* ~/.config/gtk-3.0/ 2>/dev/null || true
cp -rf config/theme/gtk-4.0/* ~/.config/gtk-4.0/ 2>/dev/null || true
cp -rf config/theme/pcmanfm/* ~/.config/pcmanfm/ 2>/dev/null || true
cp -rf config/theme/alacritty/* ~/.config/alacritty/ 2>/dev/null || true

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
