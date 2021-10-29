" basic syntax highlighing
syntax enable
set nocompatible		" be improved, required
set number relativenumber
set ruler
set autoindent
set noswapfile
set showmatch
set backspace=indent,eol,start

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
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

Plug 'overcache/NeoSolarized'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } "> file searches and more
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'

Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'yaml', 'html'] }

" javascript/typescript setup
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']

call plug#end()

set termguicolors
set background=dark
colorscheme NeoSolarized 

" set up prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

" closetag settings
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.js, *.ts, *.jsx, *.tsx'


let g:NERDTreeShowHidden = 1
" Automaticaly close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"map <silent> <C-n> :NERDTreeFocus<CR>
nnoremap <silent> <Space> :NERDTreeToggle<CR>

" change the leader key from "\" to ";" ("," is also popular)
let mapleader=";"

" better ESC
inoremap jj <esc>

" better save 
inoremap jk <esc>:w<CR>

" improved keyboard navigation
nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l


" coc config
let g:coc_global_extensions = [
		\'coc-snippets',
		\'coc-pairs',
		\'coc-tsserver',
		\'coc-eslint',
		\'coc-prettier',
		\'coc-json',
\]
