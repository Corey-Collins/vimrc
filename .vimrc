set number
set hidden
set wildmenu
set path+=**
set wildignore+=**/node_modules/**

call plug#begin('~/.vim/plugged')
Plug 'psf/black', { 'branch': 'stable' }
Plug 'preservim/nerdtree'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" one half theme {
syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
" let g:airline_theme='onehalfdark'
" lightline
" let g:lightline = { 'colorscheme': 'onehalfdark' }
" }

autocmd VimEnter * NERDTree
autocmd BufWinEnter * NERDTreeMirror
au VimEnter * wincmd l

" Removes pipes | that act as separators on splits
set fillchars=vert:\ 

