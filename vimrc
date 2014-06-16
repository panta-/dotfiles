set nocompatible

set backspace=indent,eol,start
set colorcolumn=80
set noexpandtab
set hlsearch
set incsearch
set ignorecase
set number
set ruler
"set scrolloff=4
set shiftwidth=2
set softtabstop=2
set showcmd
set showmatch
set showmode
set smartcase
set tabstop=2
"set t_Co=256
set title
set wildmenu
set wildmode=list:longest,full
set nobackup

"filetype plugin indent on

syntax on

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

nnoremap j gj
nnoremap k gk

let g:StartComment="#"
let g:EndComment=""

au FileType c,cpp     let g:StartComment = "//"
au FileType vim       let g:StartComment = "\""

if has ('folding')
	set foldenable
	set foldmethod=marker
	set foldmarker={{{,}}}
	set foldcolumn=0
endif

if has ('mouse')
	set mouse=a
endif

"if has ("vms")
"	set nobackup
"else
"	set backup
"	set backupdir=./.backup,~/.backup,.,/tmp
"	set backupskip=/tmp/*
"endif

if &term !=# "linux"
	colorscheme summerfruit256
else
	colorscheme default
endif
