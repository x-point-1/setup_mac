#!/bin/bash

cd `dirname $0`

# コマンドラインツール
xcode-select --install

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#書き込み対象フォルダを/Users/ユーザー名/.zshrcに設定
USER_NAME=$(whoami)
ARCH=$(uname -m)
TARGET=/Users/${USER_NAME}/.zshrc

#homebrewのパス設定を追記
if [[ $ARCH == arm64 ]]; then
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ${TARGET}
	eval $(/opt/homebrew/bin/brew shellenv)
elif [[ $ARCH == x86_64 ]]; then
    echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ${TARGET}
	eval $(/usr/local/bin/brew shellenv)
fi
#設定の再読み込み
source ~/.zshrc

brew update

# Homebrew自動アップデート
brew tap homebrew/autoupdate
brew autoupdate start

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
