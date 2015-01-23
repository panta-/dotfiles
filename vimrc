set nocompatible
set backspace=indent,eol,start

set history=100

set colorcolumn=80

" search options
set ignorecase
set smartcase
set incsearch
set hlsearch

set nonumber
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

" ignore white space in diffs
set diffopt+=iwhite

" Automatically read a file that has changed on disk
set autoread

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
	set guifont=DejaVu\ Sans\ Mono\ 8
	"set guioptions=ac
	set guioptions=aegmt
endif

colorscheme summerfruit256

" Dark theme
nnoremap <silent> <Leader>d :colorscheme wombat256mod<CR>
" Light theme
nnoremap <silent> <Leader>l :colorscheme summerfruit256<CR>

" Change unamed register from '+' to '*'
if has('unnamedplus')
	set clipboard=unnamedplus
endif

" Write file using sudo
nnoremap <Leader>W :w !sudo tee % > /dev/null
" Turn search highlight off
nnoremap <silent> <Leader><Space> :nohlsearch<Bar>:echo<CR>
" Toggle paste mode
nnoremap <silent> <Leader>p :set invpaste<CR>:set paste?<CR>
" Set working directory to the current file
nnoremap <Leader>cd :lcd %:p:h<CR>

" Force all *.md files as Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Change the <LocalLeader> key:
let maplocalleader = ','
