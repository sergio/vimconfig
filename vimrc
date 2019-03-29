set nocompatible

nnoremap <cr> :

let mapleader="," " leader is comma

" Show (incomplete) command in bottom bar
set showcmd 

" Show line numbers
set number

"------------------------------------
" Syntax highlighting

" Use syntax highlighting
" syntax enable

" Disable syntax highlightning when opening large files
" autocmd BufWinEnter * if line2byte(line("$") + 1) > 1000000 | syntax clear | endif


"------------------------------------
" Search

set incsearch " search as characters are entered
set hlsearch " highlight search matches

"------------------------------------
" Spaces & Tabs

set expandtab " tabs are spaces
" set tabstop=4 " number of visual spaces per TAB (tab width), (not needed when expandtab is set)
" softtabstop: number of spaces inserted by TAB when editing and also number 
" of spaces deleted by backspace
set softtabstop=4
"-------------------------------------

" Command line popup completion
" * Use Ctrl+d to show options matching current pattern
" * Use Tab to auto-complete
set wildmenu

" File completion in command line
" set path+=**

"---------------------------------------------
" Optimizations

" Vim loves to redraw the screen during things it probably doesn't
" need to, like in the middle of macros. This tells Vim not to bother
" redrawing during these scenarios, leading to faster macros.
set lazyredraw 

"---------------------------------------------
" Thanks

" https://dougblack.io/words/a-good-vimrc.html
