filetype off
filetype plugin indent on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/vim-slumlord'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'w0rp/ale'
Plug 'shime/vim-livedown'
call plug#end()

set nocompatible
set clipboard=unnamed
set modelines=0

set backupdir=./.backup,/tmp
set directory^=$HOME/.vim/tmp//

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Tabs
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

set statusline=%f
set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
"set undofile
set title
syntax on

" search
set hlsearch
set ignorecase
set ignorecase
set incsearch

set list
set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_

set background=dark
let g:solarized_termcolors=16
colorscheme solarized

" syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_loc_list_height=3
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']

" ALE
let g:ale_lint_on_text_changed = 'never'
let b:ale_fixers = ['autopep8']


" NERDtree
let NERDTreeShowHidden=1

" ctrlP
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|node_modules)$'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_show_hidden = 1

let mapleader = ","

" Quicker window movement
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-h> <C-w>h
" nnoremap <C-l> <C-w>l
nnoremap <leader>\ :NERDTree<CR>
