call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'iCyMind/NeoSolarized'
Plug 'jlanzarotta/bufexplorer'
Plug 'sheerun/vim-polyglot'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set ignorecase smartcase
set number relativenumber
set clipboard+=unnamedplus
set keymap=greek_utf-8
set iminsert=0
set imsearch=-1
set showbreak=↪
set list listchars=tab:▸\ ,eol:↲,nbsp:•,trail:·,precedes:←,extends:→
set background=light
set termguicolors

let g:airline_theme='solarized'
let g:airline_solarized_bg='light'
let g:neosolarized_contrast = "normal"
let g:neosolarized_visibility = "low"
let g:neosolarized_vertSplitBgTrans = 1
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1

colorscheme NeoSolarized

nnoremap <C-l> :noh<CR>
