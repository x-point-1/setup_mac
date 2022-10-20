#!/bin/bash

# 全員用インストール
./setup.sh

# VSCode
brew install --cask visual-studio-code
# VSCode拡張機能
while IFS= read -r line; do    
    code --install-extension $line
done < vscode_extensions.txt

# Docker
brew install --cask docker
brew install docker-compose

# XCode
mas install 497799835

# Android Studio
brew install --cask android-studio

# iTerm2
brew install --cask iterm2

# Sequel Ace
mas install 1518036000

# AWS CLI
brew install awscli

# Terraform
brew install terraform

# PHP
brew install php
brew install composer

# Fig
brew install --cask fig

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

# Node.js
NODE_VERSION=18.7.0
brew install nodenv
nodenv install $NODE_VERSION
nodenv global $NODE_VERSION
echo '' >> ~/.zshrc
echo '# nodenv' >> ~/.zshrc
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(nodenv init -)"' >> ~/.zshrc
