#!/bin/bash

# VSCode
brew install --cask visual-studio-code
# VSCode拡張機能
while IFS= read -r line; do    
    code --install-extension $line
done < vscode_extensions.txt
