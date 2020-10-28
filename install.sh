#!/bin/sh

echo "🚀 Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "🚀 Installing packages with Homebrew..."
brew bundle

echo "🔧 Copying dotfiles to home directory..."
cp {.gitconfig,.gitignore} ~/

echo "🚀 Installing App Store applications and updates..."
sudo softwareupdate -i -a

echo "🔧 Configuring system preferences..."
source .macos

echo "🚀 Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "🎉 Finished! Please restart your system..."
