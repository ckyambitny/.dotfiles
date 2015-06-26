wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O ~/.git-completion.bash
cp -v .gitignore ~/.gitignore
cp -v .aliases ~/.aliases
cp -v .bashrc ~/.bashrc
cp -v .gitconfig ~/.gitconfig
cp -v .vimrc ~/.vimrc
vim +PluginInstall +qall

cd ~ && git clone https://github.com/michaeldfallen/git-radar .git-radar
echo 'export PATH=$PATH:$HOME/.git-radar' >> ~/.bashrc

source ~/.bashrc
