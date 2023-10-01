" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable file type detection, plugins for specific files and indentation
" options
filetype plugin indent on

" Indention Options
set smarttab

" Search Options
set hlsearch
set ignorecase
set incsearch
set smartcase

" Color scheme
packadd! onedark.vim
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

syntax enable
colorscheme onedark

" User Interface Options
set laststatus=2    " Always display the status bar.
set ruler           " Always show cursor position.
set wildmenu        " Display command line's tab complete options as a menu.
set cursorline 	    " Highlight cursor line underneath the cursor horizontally.
set cursorcolumn    " Highlight cursor line underneath the cursor vertically.
set number	    " turn on line numbering

" sane text files
set fileformat=unix
set encoding=utf-8
set fileencoding=utf-8

let mapleader = ","
nnoremap H gT
nnoremap L gt

"*****************************
"************* ALE ***********
let g:ale_fix_on_save = 1
let g:ale_fixers = {}
let g:ale_linters = {}

let g:ale_fixers['*'] =  ['remove_trailing_lines', 'trim_whitespace']


" ******* Python Settings
" Highligh lines more than 88 characters for python
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd FileType python match OverLength /\%>88v.\+/

let g:ale_linters['python'] = ['black', 'flake8',  'pylint',  'ruff']
let g:ale_fixers['python'] =  ['remove_trailing_lines', 'trim_whitespace', 'black', 'pyflyby', 'reorder-python-imports', 'autoflake']

" ******* Open AI
let g:chat_gpt_max_tokens=2000
let g:chat_gpt_model='gpt-4'
let g:chat_gpt_session_mode=1
let g:chat_gpt_temperature = 0.7
let g:chat_gpt_lang = 'English'
let g:chat_gpt_split_direction = 'vertical'
" vim-flake8
"let g:flake8_show_in_file=1
"let g:flake8_show_in_gutter=1
"nnoremap <C-K> :call flake8#Flake8ShowError()<cr>
"autocmd BufWritePost *.py call flake8#Flake8()
"nnoremap ]q :cnext<CR>
"nnoremap [q :cprev<CR>
" JEDI

let g:jedi#usages_command = "<leader>u"


nnoremap <silent> <leader>n :ALENextWrap<CR>
nnoremap <silent> <leader>p :ALEPreviousWrap<CR>
