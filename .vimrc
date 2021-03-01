set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'frazrepo/vim-rainbow'
Plugin 'preservim/nerdtree'
Plugin 'preservim/nerdcommenter'
Plugin 'tpope/vim-eunuch'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'kyoz/purify', { 'rtp': 'vim' }

call vundle#end()
filetype plugin indent on
syntax on
colorscheme purify

let g:rainbow_active = 1
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

let g:multi_cursor_use_default_mapping = 1

nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf :NERDTreeFind<CR>

set hidden
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start

set autoindent
set copyindent
set number
set shiftround
set showmatch
set ignorecase
set smartcase

set smarttab

set hlsearch
set incsearch

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells

set nobackup
set noswapfile

let mapleader="'"
nmap <leader>ve :e $MYVIMRC<CR>
nmap <leader>vr :so $MYVIMRC<CR>

inoremap jj <ESC>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <leader>ss :setlocal spell!<cr>

vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a`<esc>`<i`<esc>

inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

set pastetoggle=<F2>
nnoremap ; :

vmap Q gq
vmap Q gqap

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

cmap w!! w !sudo tee % >/dev/null
