set nocompatible
set backspace=indent,eol,start

set history=100

set textwidth=80
"set colorcolumn=78

" search options
set ignorecase
set smartcase
set incsearch
set hlsearch

set nonumber
"set relativenumber
set ruler

set scrolloff=0

set shiftwidth=4
set softtabstop=4
set tabstop=4
set noexpandtab
"set autoindent

set showcmd
set showfulltag
set showmatch
set showmode

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" remove statuslines and vertical separators
set fillchars=

"set t_Co=256
"set title

set wildmenu
set wildmode=list:longest,full

set nobackup

set cpoptions+=$

set virtualedit=block

set nohidden

" ignore white space in diffs
set diffopt+=iwhite

" Automatically read a file that has changed on disk
set autoread

filetype on
filetype plugin on
filetype indent on

syntax on

"let g:StartComment="#"
"let g:EndComment=""

"au FileType c,cpp let g:StartComment = "//"
"au FileType vim let g:StartComment = "\""

if has ('folding')
	set foldenable
	set foldmethod=marker
	set foldmarker={{{,}}}
	set foldcolumn=0
endif

if has ('mouse')
	set mouse=a
endif

if has("gui_running")
	set guifont=DejaVu\ Sans\ Mono\ 8
	set guioptions=ac
endif

" Write file using sudo
nnoremap <Leader>W :w !sudo tee % > /dev/null
" Turn search highlight off
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" Toggle paste mode
nnoremap <silent> <Leader>p :set invpaste<CR>:set paste?<CR>
" Dark theme
nnoremap <silent> <Leader>d :set background=dark<CR>:colorscheme desert<CR>
" Light theme
nnoremap <silent> <Leader>l :set background=light<CR>:colorscheme morning<CR>
