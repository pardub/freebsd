" curl -LJO https://github.com/pardub/freebsd/edit/main/.vimrc
" git clone --depth 1 https://github.com/neoclide/coc.nvim.git
au BufNewFile,BufRead *.py
set number
set relativenumber
set encoding=utf-8
set history=1000
syntax on
set autoindent          " Respect indentation when starting a new line.
set tabstop=4           " number of visual spaces per TAB
set softtabstop=4       " number of spaces in tab when editing
set shiftwidth=4
set expandtab           " tabs are spaces
set textwidth=79
set fileformat=unix
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
filetype indent on      " load filetype-specific indent files
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " do case insensitive search
colorscheme murphy      "Change a colorscheme.
set backspace=2         " Fix backspace behavior on most terminals.
"command! -nargs=* Wrap set wrap linebreak nolist

