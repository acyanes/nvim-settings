
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


source $HOME/.config/nvim/vim-plug/plugins.vim

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

" find files with telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>

" refresh nvim
nnoremap <leader>sv :source $MYVIMRC<CR>


" coc config
let g:coc_global_extensions = [
		\'coc-snippets',
		\'coc-pairs',
		\'coc-tsserver',
		\'coc-eslint',
		\'coc-prettier',
		\'coc-json',
\]
