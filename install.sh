#!/bin/sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install applications with Homebrew
brew bundle

# Copy dotfiles to home directory
cp {.gitconfig,.gitignore} ~/

# Install App Store applications and updates
sudo softwareupdate -i -a

# Configure system preferences
source .macos

# Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
