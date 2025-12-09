#!/usr/bin/env bash

set -e

DOTFILES_DIR="$HOME/.dotfiles"

# Clone or update the repo
if [ ! -d "$DOTFILES_DIR" ]; then
    echo "[+] Cloning dotfiles repo..."
    git clone https://github.com/colesmithpc/dotfiles.git "$DOTFILES_DIR"
else
    echo "[+] Updating existing dotfiles..."
    cd "$DOTFILES_DIR" && git pull
fi

echo "[+] Creating symlinks..."
ln -sf "$DOTFILES_DIR/.bashrc"        "$HOME/.bashrc"
ln -sf "$DOTFILES_DIR/.bash_profile" "$HOME/.bash_profile"
ln -sf "$DOTFILES_DIR/.vimrc"        "$HOME/.vimrc"
ln -sf "$DOTFILES_DIR/.config"       "$HOME/.config"

echo "[+] Done! Dotfiles installed successfully."

