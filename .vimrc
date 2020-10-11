syntax on

set clipboard+=unnamed
set guicursor=
set encoding=utf-8
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set cmdheight=2
set updatetime=50
set shortmess+=c
set colorcolumn=80

":autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp"

highlight ColorColumn ctermbg=0 guibg=lightgrey
let g:coc_disable_startup_warning = 1

"Let clangd fully control code completion"
"let g:ycm_clangd_uses_ycmd_caching = 0
"" Use installed clangd, not YCM-bundled clangd which doesn't get updates.
let g:ycm_clangd_binary_path = exepath("clangd")

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'phanviet/vim-monokai-pro'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
call plug#end()

let g:airline#extensions#tabline#enabled = 1

let g:gruvbox_contrast_dark = 'hard'

set background=dark
colorscheme gruvbox

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'

nnoremap <C-p> :GFiles<CR>
