#!/bin/bash

# Gitpod dotfiles installation script
set -e

# Get the directory where this script is located
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Backup existing dotfiles if they exist
backup_if_exists() {
    if [ -f "$1" ] && [ ! -L "$1" ]; then
        echo "Backing up existing $1 to $1.backup"
        mv "$1" "$1.backup"
    fi
}

echo "Installing dotfiles from $DOTFILES_DIR"

# Backup existing files
backup_if_exists ~/.bashrc
backup_if_exists ~/.gitconfig
backup_if_exists ~/.bash_aliases
backup_if_exists ~/.prompt.sh

# Create symbolic links
echo "Creating symbolic links..."
ln -sf "$DOTFILES_DIR/bashrc" ~/.bashrc
ln -sf "$DOTFILES_DIR/gitconfig" ~/.gitconfig
ln -sf "$DOTFILES_DIR/bash_aliases" ~/.bash_aliases
ln -sf "$DOTFILES_DIR/prompt.sh" ~/.prompt.sh

# Source the bashrc file if running interactively
if [[ $- == *i* ]]; then
    source ~/.bashrc
    echo "Sourced ~/.bashrc"
fi

echo "Dotfiles installation complete!"
echo "New terminal sessions will use the updated configuration." 