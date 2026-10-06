#!/bin/bash
# Symlink dotfiles into $HOME. Uses GNU Stow when available, plain ln otherwise.
# Usage: ./install.sh [package ...]   (default: all packages)
set -e
cd "$(dirname "$0")"
packages=("$@")
[ $# -eq 0 ] && packages=(vim tmux git bash readline editorconfig)

for pkg in "${packages[@]}"; do
    if command -v stow >/dev/null 2>&1; then
        stow -v -t "$HOME" "$pkg"
    else
        for f in "$pkg"/.[!.]*; do
            ln -sfn "$PWD/$f" "$HOME/$(basename "$f")"
            echo "LINK: ~/$(basename "$f") => $PWD/$f"
        done
    fi
done
