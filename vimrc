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
set softtabstop=8
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

execute pathogen#infect()

filetype plugin indent on

syntax on

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
	set guifont=DejaVu\ Sans\ Mono\ 9
	set guioptions=aegmt
endif

colorscheme summerfruit256

" Dark theme
nnoremap <silent> <Leader>d :colorscheme wombat256mod<CR>
" Light theme
nnoremap <silent> <Leader>l :colorscheme summerfruit256<CR>

let g:airline_theme_map = {'summerfruit256': 'light', 'wombat256mod': 'dark'}

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

nnoremap <Leader>L :<C-u>execute 'file '.fnameescape(resolve(expand('%:p')))<bar>
			\ call fugitive#detect(fnameescape(expand('%:p:h')))<CR>
