runtime bundle/vim-pathogen/autoload/pathogen.vim

set nocompatible
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

set list

" Automatically read a file that has changed on disk
set autoread

set keymap=greek_utf-8
set iminsert=0
set imsearch=-1

execute pathogen#infect()

filetype plugin indent on

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
set background=light
colorscheme solarized

" Change unamed register from '+' to '*'
if has('unnamedplus')
	set clipboard=unnamedplus
endif

" Toggle paste mode
nnoremap <silent> <Leader>p :set invpaste<CR>:set paste?<CR>
" Set working directory to the current file
nnoremap <Leader>cd :lcd %:p:h<CR>

" Force all *.md files as Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Change the <LocalLeader> key:
let maplocalleader = ','

nnoremap <C-n> :NERDTreeToggle<CR>
