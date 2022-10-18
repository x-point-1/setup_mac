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

# AWS CLI
brew install awscli

# Terraform
brew install terraform

# PHP
brew install php
brew install composer

# Python
PYTHON_VERSION=3.9.14
brew install pyenv
pyenv install $PYTHON_VERSION
pyenv global $PYTHON_VERSION
echo '' >> ~/.zshrc
echo '# pyenv' >> ~/.zshrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init --path)"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

# TODO Node
