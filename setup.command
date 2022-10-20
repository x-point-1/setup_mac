#!/bin/bash

cd `dirname $0`

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

# AltTab
brew install --cask alt-tab

# Raycast
brew install --cask raycast

# Rectangle
brew install --cask rectangle

# 1password
brew install --cask 1password
