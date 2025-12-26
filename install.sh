#!/usr/bin/env bash
DOTFILES="$HOME/dotfiles"

ln -sf "$DOTFILES/.bashrc" "$HOME/.bashrc"
ln -sf "$DOTFILES/.bash_profile" "$HOME/.bash_profile"

ln -sf "$DOTFILES/.vimrc" "$HOME/.vimrc"
mkdir -p "$HOME/.config/nvim"
ln -sf "$DOTFILES/.config/nvim/init.lua" "$HOME/.confg/nvim/init.lua"

mkdir -p "$HOME/.config/kitty"
ln -sf "$DOTFILES/.config/kitty/kitty.conf" "$HOME/.config/kitty/kitty.conf"
ln -sf "$DOTFILES/.config/kitty/current-theme.conf" "$HOME/.config/kitty/current-theme.conf"

mkdir -p "$HOME/.config/sway"
ln -sf "$DOTFILES/.config/sway/config" "$HOME/.config/sway/config"
mkdir -p "$HOME/.config/waybar"
ln -sf "$DOTFILES/.config/waybar/config" "$HOME/.config/waybar/config"
ln -sf "$DOTFILES/.config/waybar/style.css" "$HOME/.config/waybar/style.css"

echo "Dotfiles installed."

