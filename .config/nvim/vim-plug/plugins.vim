"auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
                \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.config/nvim/autoload/plugged')

"file exploration
Plug 'scrooloose/NERDTree'

" commenter
Plug 'preservim/nerdcommenter'

" junegunn/fzf.vim (go back and install dependencies)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" rainbow brackets
Plug 'frazrepo/vim-rainbow'

" Better syntax support
Plug 'sheerun/vim-polyglot'

" Color Scheme
Plug 'flazz/vim-colorschemes'

" Install file icons in NERDTree
Plug 'ryanoasis/vim-devicons'

call plug#end()
