#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# ZSH
brew install zsh zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /usr/local/bin/zsh

brew install node
npm install --global pure-prompt


cp -v .gitignore ~/.gitignore
cp -v .env.sh ~/.env.sh
cp -v .zshrc ~/.zshrc
cp -v .aliases ~/.aliases
cp -v .profile ~/.profile
cp -v .gitconfig ~/.gitconfig
