#!/usr/bin/env bash

set -e

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

echo "Installing dotfiles from $DOTFILES"

# Make sure required directories exist
mkdir -p "$HOME/.config"

cd "$DOTFILES"

stow --target="$HOME" .

echo "Dotfiles installed."

