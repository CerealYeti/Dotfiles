set history=500

filetype plugin on
filetype indent on

set autoread
au FocusGained,BufEnter * checktime

" leader to different key
let mapleader = "'"

" fast saving
nmap <leader>w :w!<cr>

" :W saves the file
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Turn on wildmenu

" Ignored compiled files
set wildignore=*.o,*~,*.pyc,*/.git,*/.hg/*,*/.svn/*,*/.DS_Store

set ruler
set number

set cmdheight=1

set hid

" Make backspace act as it should
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase " ignore case when searching
set smartcase " when searching be smart about cases
set hlsearch " search like in modern browsers
set incsearch " search like in modern browsers

" good performance config
set lazyredraw

" enabled for regular expressions
set magic

set showmatch " match brackets when indicator is over them
set mat=2 " how many tenths of a second to blink when matching brackets

" Error bells no more
set noerrorbells
set novisualbell
set t_vb=
set tm=500

syntax enable

try 
    colorscheme elflord
catch
endtry

set background=dark

set encoding=utf8

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai
set si
set wrap

" * or # searches for the current selection
vnoremap <silent> * : <C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # : <C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" map space to / and ctrl + space to ? (backwards search)
map <space> /
map <C-space> ?

map <silent> <leader><cr> :noh<cr>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>bd :Bclose<cr>:tabclose<cr>gT

map <leader>ba: bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

set laststatus=2

" move a line of text using alt + j/k
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

map <leader>ss :setlocal spell!<cr>
map <F2> :setlocal paste!<cr>

inoremap jj <ESC>
map ; :

