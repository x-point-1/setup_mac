#!/bin/bash

# コマンドラインツール
xcode-select --install

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update

# MAS
brew install mas

# Google Chrome
brew install --cask google-chrome

# Zoom
brew install --cask zoom

# Slack
brew install --cask slack