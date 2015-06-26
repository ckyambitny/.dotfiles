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

" Editor
" ----------------------------------------------------------------------------

syntax on                       " enble syntax highlight
colorscheme gruvbox             " set theme of colors
set background=dark             " set condition in theme that we use dark/light bg

set mouse=a                     " enable mouse
set nowrap                      " don't wrap lines
set number                      " enable show number of line
set noic                        " enable case sensetive
set hlsearch                    " enable highlight during searching
set incsearch                   " enable searching mechanism during putting chars
set history=50                  " (hi) keep 50 lines of command history

set tabstop=4                   " set 4 chars after what editor has stopped
" set softtabstop
set shiftwidth=4                " (sw) width (in spaces) used in each step of autoindent (aswell as << and >>)
set expandtab                   " (et) expand tabs to spaces (use :retab to redo entire file)
" set smarttab                    " (sta) 'shiftwidth' used in front of a line, but 'tabstop' used otherwise
set autoindent                  " (ai) turn on auto-indenting (great for programers)
" set copyindent                  " (ci) when auto-indenting, use the indenting format of the previous line

set showcmd                     " (sc) display an incomplete command in the lower right
set ruler                       " (ru) show the cursor position at all times

set cursorline                  " highlight current line
set title                       " show filename in title bar
set wildmenu                    " show line with autocomplete

set list                        " show whitespaces
set listchars=tab:▸\ ,trail:·,extends:❯,precedes:❮
                                " replace default whitespaces to custom


" Configurations
" -----------------------------------------------------------------------------

" ctrlp
" -----------------------------------------------------------------------------
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|vendor\|node_modules$\|target$\|project$',
  \ 'file': '\v\.(exe|so|dll|log|png|jpeg|jpg)$',
  \ }


" NERDTree
" -----------------------------------------------------------------------------
let NERDTreeShowHidden=0        " hide hidden files
let NERDTreeQuitOnOpen=0        " disable quit NERDTree panel when file open


" vim-move
" -----------------------------------------------------------------------------
let g:move_key_modifier = 'C'   " set hot key as Control


" Airline
" -----------------------------------------------------------------------------
set laststatus=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.branch = '⎇ '
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'

" display open buffers in tabline
let g:airline#extensions#tabline#enabled = 1


" typescript-vim
" -----------------------------------------------------------------------------
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Commands
" -----------------------------------------------------------------------------
:command! W write
:command! Wq wq

" Key Mappings
" -----------------------------------------------------------------------------

" <F9> show/hide NERDTree
:map <F9> :NERDTreeTabsToggle<CR>

" <F8> show/hide Outline
nmap <F8> :TagbarToggle<CR>
