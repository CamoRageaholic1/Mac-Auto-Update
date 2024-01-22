#!/bin/zsh


echo "Checking for Homebrew Updates..."
brew update
brew upgrade

# checks for programming languages and other tools if applicable
# Python packages:
echo "Checking for outdated Python packages..."
pip list --outdated
# add more languages here as needed 

echo "Remember to check for updates in the Mac App Store."
echo "Remember to check for updates to third-party applications not managed by $
echo "Remember to check for any firmware updates in System Preferences."

echo "Checking for macOS System Updates..."
softwareupdate -l
