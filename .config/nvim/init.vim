""" ShinyPotat's Neovim init.vim

""" Vim-Plug
call plug#begin()

" Themes
Plug 'arcticicestudio/nord-vim'

" Plugins
Plug 'itchyny/lightline.vim'                       " Lightline statusbar
Plug 'scrooloose/nerdtree'                         " Nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'     " Highlighting Nerdtree
Plug 'ryanoasis/vim-devicons'                      " Icons for Nerdtree
Plug 'vim-python/python-syntax'                    " Python hihglighting
Plug 'ap/vim-css-color'                            " Color previews for CSS

call plug#end()

""" Main Configurations
filetype plugin indent on
set wildmenu
set hidden
set termguicolors
set relativenumber
set clipboard=unnamedplus
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set mouse=nicr

""" Coloring
colorscheme nord
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }


""" Keybindings
let mapleader=' '
" Open terminal inside NeoVim
map <Leader>tt :vnew term://fish<CR>
" Remap splits navigation to just CTRL + hjkl
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


""" NERDTree
map <Leader>nt :NERDTreeToggle<CR>
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1

