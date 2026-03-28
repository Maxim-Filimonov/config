#!/bin/sh
# install.sh - entrypoint for GitHub Codespaces dotfiles setup
# See: https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account#dotfiles

set -e

# Install chezmoi if not already installed
if ! command -v chezmoi > /dev/null 2>&1; then
    echo "Installing chezmoi..."
    sh -c "$(curl -fsLS get.chezmoi.io)" -- -b "$HOME/.local/bin"
    export PATH="$HOME/.local/bin:$PATH"
fi

# Initialize and apply chezmoi using this cloned dotfiles repository as the source
DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"
echo "Applying dotfiles from $DOTFILES_DIR..."
chezmoi init --apply --source="$DOTFILES_DIR"
