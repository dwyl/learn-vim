set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required!

Bundle 'gmarik/vundle'

Bundle "mileszs/ack.vim"
Bundle 'tsaleh/vim-align'
Bundle 'kien/ctrlp.vim'

Bundle 'duff/vim-scratch'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'msanders/snipmate.vim'

Bundle 'vim-ruby/vim-ruby'
Bundle 'juvenn/mustache.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'zaiste/VimClojure'
Bundle 'altercation/vim-colors-solarized'

" Bundle 'vim-scripts/ZoomWin'
Bundle 'mattn/gist-vim'
Bundle 'jgdavey/vim-blockle'
Bundle 'duff/vim-bufonly'
Bundle 'pangloss/vim-javascript'
Bundle 'tsaleh/vim-matchit'
Bundle 'jpalardy/vim-slime'
Bundle 'tsaleh/vim-supertab'
Bundle 'skalnik/vim-vroom'

Bundle 'tpope/gem-browse'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-rake'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rvm.git'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

