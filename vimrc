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

" Python modules
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd FileType python match OverLength /\%>80v.\+/

" ALE
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'python': ['autopep8'],
\   'javascript': ['eslint'],
\}
let g:ale_fix_on_save = 1

" vim-flake8
"let g:flake8_show_in_file=1
"let g:flake8_show_in_gutter=1
"nnoremap <C-K> :call flake8#Flake8ShowError()<cr>
"autocmd BufWritePost *.py call flake8#Flake8()
"nnoremap ]q :cnext<CR>
"nnoremap [q :cprev<CR>
