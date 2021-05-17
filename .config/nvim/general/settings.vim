syntax enable                       " enable syntax hightlighting
set history=500                     " how many lines of history vim has to remember
set hidden                          " required to keep multiple buffers open
set wrap                            " wrap lines if they are too big
set lbr                             " help wrap long lines between words
set textwidth=79                    " setting text width for wrap, standard in most code is 80 to 100
set encoding=utf-8		            " use utf-8 because it's better
set fileencoding=utf-8	            " see above
set ruler			                " Show cursor position all times
set cmdheight=2			            " more space for messages
set mouse=a			                " enable the mouse
set splitbelow			            " horizontal splits automatically happen below
set splitright			            " vertical splits automatically happen right
set conceallevel=0		            " Can now see `` in markdown
set tabstop=4			            " 4 spaces for tabs
set shiftwidth=4		            " change number of spaces inserted for indent
set smarttab			            " recognizes 2 vs 4 spaces in tabs
set expandtab			            " convert tabs to spaces
set smartindent			            " be smarter
set autoindent			            " better (faster, stronger)
set laststatus=0		            " always display the status line
set number			                " line numbers
set showtabline=2		            " always show tabs
set nobackup			            " recommended by certain plugins, also just no more .swp
set nowritebackup		            " see above
set noswapfile                      " personal preference
set updatetime=300 		            " faster completion
set timeoutlen=500		            " default timeoutlen is 1000
set clipboard=unnamedplus	        " copy paste between vim and everything else
set ignorecase                      " ignore case while searching
set smartcase                       " When searching, be smart
set hlsearch                        " highlight search results
set incsearch                       " make search act like modern browsers
set lazyredraw                      " don't redraw while executing macros (performance increase)
set magic                           " the magic of regex
set showmatch                       " show matching bracket
set mat=2                           " blink to matching bracket (tenths of a second)
set noerrorbells                    " annoyance removal
set novisualbell                    " see above
set t_vb=                           " see above
set tm=500                          " see above
set foldcolumn=2                    " a little extra margin on your left
set backspace=eol,start,indent      " backspace as it should act
set whichwrap+=<,>,h,l              " see above
set formatoptions-=cro              " no more comment continuations please
set notimeout                       " really don't like leader key to timeout

"color scheme stuff
set background=light	              "tell vim the background is a certain color
colorscheme solarized
set t_Co=256

au! BufWritePost $MYVIMRC source %  " auto source when writing to init.vim

" ignore compiled files
set wildignore=*.0,*~,*.pyc,*/.git,*/.hg/*,*/.svn/*,*/.DS_Store

" sometimes comment continuations still happen so brute force to disable every
" time a file is loaded
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
