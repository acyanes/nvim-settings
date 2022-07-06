" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dsznajder/vscode-es7-javascript-react-snippets', { 'do': 'yarn install --frozen-lockfile && yarn compile' }

Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'overcache/NeoSolarized'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdcommenter'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'yaml', 'html'] }

" javascript/typescript setup
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier']
call plug#end()
