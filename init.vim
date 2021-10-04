set nocompatible		" be improved, required
set relativenumber
set ruler
set colorcolumn=100
set autoindent
set noswapfile
set showmatch

" Spaces & Tabs {{{
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
set expandtab       " tabs are space
set autoindent
set copyindent      " copy indent from the previous line
" }}} Spaces & Tabs


filetype off	" off

call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
Plug 'overcache/NeoSolarized'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "> file searches and more
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'yaml', 'html'] }

" javascript/typescript setup
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

" show hidden files in nerdtree
let NERDTreeShowHidden=1
call plug#end()

set termguicolors
set background=dark
colorscheme gruvbox 

map <silent> <C-n> :NERDTreeFocus<CR>

" better ESC
inoremap jj <esc>

" coc config
let g:coc_global_extensions = [
		\'coc-snippets',
		\'coc-pairs',
		\'coc-tsserver',
		\'coc-eslint',
		\'coc-prettier',
		\'coc-json',
\]
