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

filetype plugin on

:autocmd BufNewFile *.c 0r ~/.vim/templates/skeleton.c
:autocmd BufNewFile *.h 0r ~/.vim/templates/skeleton.h
:autocmd BufNewFile AUTHORS 0r ~/.vim/templates/AUTHORS

highlight ColorColumn ctermbg=0 guibg=lightgrey
let g:coc_disable_startup_warning = 1

let g:ycm_clangd_binary_path = exepath("clangd")
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'
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

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> for trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv
