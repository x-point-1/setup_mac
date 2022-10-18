#!/bin/bash

# VSCode
brew install --cask visual-studio-code
# VSCode拡張機能
while IFS= read -r line; do    
    code --install-extension $line
done < vscode_extensions.txt

# Docker
brew install docker
brew install docker-compose
brew install --cask docker

# XCode
mas install 497799835

# Android Studio
brew install --cask android-studio

# Sequel Ace
mas install 1518036000
