"Fundamental settings
  set fileencoding=utf-8
  set fileencodings=ucs-bom,utf-8,gbk,cp936,latin-1
  set fileformat=unix
  set fileformats=unix,dos,mac
  filetype on
  filetype plugin on
  filetype plugin indent on
  set nospell

" Some useful settings
  set smartindent
  set expandtab         "tab to spaces
  set tabstop=4         "the width of a tab
  set shiftwidth=4      "the width for indent
  set textwidth=80      "the max length of a line
  set foldenable
  set foldmethod=indent "folding by indent
  set foldlevel=99
  set hlsearch          "Highlight word under cursor with *
  set ignorecase        "ignore the case when search texts
  set smartcase         "if searching text contains uppercase case will not be ignored
  set splitbelow
  set splitright
  set cursorline
  set clipboard+=unnamedplus

" Lookings
  set number           "line number
  set nowrap           "no line wrapping
  set listchars=eol:$,nbsp:%,space:-,tab:>>

" Copy paste register remapping
nnoremap p "*p
nnoremap y "+y
nnoremap p "+p
nnoremap d "+d
nnoremap \ :noh

vnoremap p "*p
vnoremap y "+y
vnoremap p "+p
vnoremap d "+d
vnoremap \ :noh

" lightline
  set laststatus=2
" Plugins with vim-plug
call plug#begin('~/.vim/plugged')
"Plug 'tpope/vim-sensible'
Plug 'ervandew/supertab' 
Plug 'ycm-core/YouCompleteMe'
Plug 'itchyny/lightline.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
call plug#end()
