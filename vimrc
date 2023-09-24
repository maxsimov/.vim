" Indention Options
set autoindent
set expandtab
set shiftwidth=4
set smarttab
set tabstop=4

" Search Options
set hlsearch
set ignorecase
set incsearch
set smartcase

" Text Rendering Options
syntax enable

" User Interface Options
set laststatus=2    " Always display the status bar.
set ruler           " Always show cursor position.
set wildmenu        " Display command line's tab complete options as a menu.

" enable 256 colors
set t_Co=256
set t_ut=

" turn on line numbering
set number

" sane text files
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

nnoremap H gT
nnoremap L gt

syntax on
filetype plugin indent on
