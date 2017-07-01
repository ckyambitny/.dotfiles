#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew install node
brew install wget

# git completion
wget https://github.com/git/git/blob/master/contrib/completion/git-completion.zsh -O ~/.git-completion.zsh

# ZSH
brew install zsh zsh-completions
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /usr/local/bin/zsh


npm install --global pure-prompt

if [ -f ~/.git-completion.zsh ]; then
      . ~/.git-completion.zsh

    # Lets make aliases autocomplete!
    __git_complete g __git_main
    __git_complete gco _git_checkout
    __git_complete gp _git_push
    __git_complete gb _git_branch
fi


cp -v .gitignore ~/.gitignore
cp -v .env.sh ~/.env.sh
cp -v .zshrc ~/.zshrc
cp -v .aliases ~/.aliases
cp -v .profile ~/.profile
cp -v .gitconfig ~/.gitconfig
