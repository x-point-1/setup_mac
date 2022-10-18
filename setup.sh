#!/bin/bash

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

# Google Chrome
brew install --cask google-chrome

# Zoom
brew install --cask zoom

# Slack
brew install --cask slack