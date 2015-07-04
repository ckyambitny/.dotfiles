cp -v .gitignore ~/.gitignore
cp -v .aliases ~/.aliases
cp -v .bashrc ~/.bashrc
cp -v .gitconfig ~/.gitconfig
cp -v .vimrc ~/.vimrc 
vim +PluginInstall +qall
source ~/.bashrc
