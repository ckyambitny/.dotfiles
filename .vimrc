set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.


" My bundles here:
Plugin 'flazz/vim-colorschemes'
" Colors 
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
" you should have ctags 5.x, recommend: 'brew install ctags' after that set 'alias ctags=/usr/local/Cellar/ctags/5.8/bin/ctags'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'Townk/vim-autoclose'
Plugin 'airblade/vim-gitgutter'
Plugin 'matze/vim-move'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-fugitive'
Plugin 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Plugin 'jistr/vim-nerdtree-tabs'
" set the same state of NERDTree in each tab
Plugin 'Xuyuanp/nerdtree-git-plugin'
" set dirty changes in NERDTree
Plugin 'elzr/vim-json'
" support highlight of JSON files
Plugin 'leafgarland/typescript-vim'
" support highlight to TypeScript files
Plugin 'othree/html5.vim'
" Support HTML5 All of your Plugins must be added before the following line


call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set number 
set hlsearch 
set incsearch
set title
set wildmenu
set mouse=a
set shiftwidth=4
set expandtab
set tabstop=4
set background=dark
execute pathogen#infect()
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
