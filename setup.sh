#!/bin/bash

# VSCode
brew install visual-studio-code --cask
# VSCode拡張機能
while IFS= read -r line; do    
    code --install-extension $line
done < vscode_extensions.txt
