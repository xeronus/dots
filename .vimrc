set splitbelow
set splitright
set autoindent
set smartindent
set laststatus=2
set timeoutlen=500
set iminsert=0
set imsearch=0
set ignorecase
set hidden
set hlsearch
set expandtab
set tabstop=3  
set relativenumber
set number
set autoread
set incsearch
"set cursorline
set showcmd
set foldenable
set formatoptions-=cro
set rnu
set fillchars+=vert:\ 
colorscheme pyte
syntax on
syntax enable
let mapleader ="t"
nmap <Leader>w :w!<CR>
vnoremap <C-c> "+y
map <C-p> "+P
nmap <Leader>g :Goyo<CR>
nmap <Leader>b :Limelight<CR>
xmap <Leader>b :Limelight<CR>
" Plugins
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'raimondi/delimitmate'
Plugin 'junegunn/goyo.vim'
Plugin 'junegunn/limelight.vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
