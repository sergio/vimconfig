set nocompatible

nnoremap <cr> :

let mapleader="," " leader is comma

" Show (incomplete) command in bottom bar
set showcmd 

" Show line numbers
set number

"------------------------------------

call plug#begin('~/.vim/plugged')

" Essential plugins
"
Plug 'itchyny/lightline.vim'
Plug 'pbrisbin/vim-colors-off'

Plug '/usr/local/bin/fzf'
Plug 'junegunn/fzf.vim'

" Languages
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Niceties

" Focused writing
Plug 'junegunn/limelight.vim'

call plug#end()

"------------------------------------
" Syntax highlighting

set background=dark
colorscheme off " the color scheme is called 'off' (pbrisbin/vim-colors-off)

" Use syntax highlighting
" syntax enable

" Disable syntax highlightning when opening large files
" autocmd BufWinEnter * if line2byte(line("$") + 1) > 1000000 | syntax clear | endif

"------------------------------------
" Current position highlight

" Setting all these to NONE only highlights current line number.
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
" Clearing CursorLineNR removes foreground and background color changes
" to the line number, making it only bold and white.
highlight clear CursorLineNR
set cursorline

"------------------------------------
" Statusline

set laststatus=2

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

" Hide swap files
set directory^=$HOME/.vim/tmp//
"---------------------------------------------
" Thanks

" https://dougblack.io/words/a-good-vimrc.html
