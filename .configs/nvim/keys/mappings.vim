" better nav for completions
inoremap <expr> <C-j> ("\<C-n>")
inoremap <expr> <C-k> ("\<C-p>")

" use alt + hjkl for resizing
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" Window Tab control
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>tl :tabnext<cr>
map <leader>th :tabprevious<cr>

" escape is so far away though
inoremap jk <ESC>
inoremap kj <ESC>

" ; is better than : because no one likes shift
map ; :

" Buffer control
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

" save like normal
nnoremap <C-s> :w<CR>

" <TAB>: completion
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Indent Control in Visual
vnoremap < <gv
vnoremap > >gv

" window nav
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Visual mode * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Spell checking and pasting
map <leader>ss :setlocal spell!<cr>
map <F2> :setlocal paste!<cr>

" Disable highlight hotkey
map <silent> <leader><cr> :noh<cr>

" NERDCommenter
let g:NERDCreateDefaultMappings=1
let g:NERDSpaceDelims=1
let g:NERDCompactSexyComs=1
let g:NERDCommentEmptyLines=1
let g:NERDTrimTrailingWhitespace=1
let g:NERDToggleCheckAllLines=1

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>nn :NERDTree<CR>
nnoremap <leader>nt :NERDTreeToggle<CR>
nnoremap <leader>nf: :NERDTreeFind<CR>

" Close vim if NERDTree is the only window still open
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

"forget to sudo, don't worry
cmap w!! w !sudo tee %

" Visual mode * or # searches for the current selection below and above
" respectively
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

