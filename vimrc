set nocompatible " be iMproved, required
filetype off     " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'LnL7/vim-nix.git'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'derekwyatt/vim-scala.git'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set backspace=indent,eol,start

set history=100

set colorcolumn=80

" search options
set ignorecase
set smartcase
set incsearch
set hlsearch

set number relativenumber
set ruler

set scrolloff=0

set shiftwidth=8
set softtabstop=0
set tabstop=8
set noexpandtab

set showcmd
set showfulltag
set showmatch
set showmode

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" remove statuslines and vertical separators
set fillchars=

set title

set wildmenu
set wildmode=list:longest,full

set nobackup

set cpoptions+=$

set virtualedit=block

set hidden

" Automatically read a file that has changed on disk
set autoread

set keymap=greek_utf-8
set iminsert=0
set imsearch=-1

syntax enable

if has('folding')
	set foldenable
	set foldmethod=marker
	set foldmarker={{{,}}}
	set foldcolumn=0
endif

if has('mouse')
	set mouse=a
endif

if has('gui_running')
	set guifont=Hack\ 9
	set guioptions=
endif

let g:airline_solarized_bg='light'
let g:solarized_termcolors=16
let g:solarized_visibility='low'
set background=light
colorscheme solarized
call togglebg#map("<F5>")

set showbreak=↪\ 
set list listchars=tab:▸\ ,eol:↲,nbsp:•,trail:·,precedes:←,extends:→

nnoremap <C-l> :noh<CR>
