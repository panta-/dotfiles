call plug#begin('~/.local/share/nvim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'derekwyatt/vim-scala', { 'for' : 'scala' }
Plug 'iCyMind/NeoSolarized'
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

set background=light
set clipboard+=unnamedplus
set ignorecase smartcase
set number relativenumber
set termguicolors

set showbreak=↪
set list listchars=tab:▸\ ,eol:↲,nbsp:•,trail:·,precedes:←,extends:→

nnoremap <C-l> :noh<CR>

let g:airline_solarized_bg='light'
let g:neosolarized_contrast = "normal"
let g:neosolarized_visibility = "low"
let g:neosolarized_vertSplitBgTrans = 1
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1
colorscheme NeoSolarized
