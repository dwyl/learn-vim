" Keybindings:
source ~/.vim/keybindings.gui.vim

" Font: Choose font and enable anti-aliasing
set guifont=Monaco:h16
set antialias

" Use UTF-8 everywhere.
set encoding=utf-8

" Maximize: Vert and Horiz by default
set fuoptions=maxvert,maxhorz

" Hide toolbar and menus.
set guioptions-=T
set guioptions-=m

" Scrollbar is always off.
set guioptions-=rL

" Console style tab labels
set guioptions-=e

" Don't flick cursor.
set guicursor=a:blinkon0

" Show trailing whitepace and spaces before a tab:
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/

" Color:
set background=dark
colorscheme solarized
" colorscheme railscasts

" abbreviations
iabbrev rdebug    require 'ruby-debug'; Debugger.start; Debugger.settings[:autoeval] = 1; Debugger.settings[:autolist] = 1; debugger
