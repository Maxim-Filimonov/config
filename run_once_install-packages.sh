#!/bin/bash

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then

  # install homebrew if it's missing
  if ! command -v brew >/dev/null 2>&1; then
    echo "Installing homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  if [ -f "$HOME/.Brewfile" ]; then
    echo "Updating homebrew bundle"
    brew bundle --global
    echo "Changing default shell to zsh"
    chsh -s $(which zsh)
  fi

fi

# Disable apple press and hold function for vscode - so that we can use vim mode
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false

# Disable apple press and hold globally
defaults write -g ApplePressAndHoldEnabled -bool false

# Install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
