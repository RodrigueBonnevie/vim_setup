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

vnoremap p "*p
vnoremap y "+y
vnoremap p "+p
vnoremap d "+d


" vim-plug install
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins with vim-plug
call plug#begin('~/.vim/plugged')
"Plug 'tpope/vim-sensible'
"Plug 'ervandew/supertab' 
Plug 'ycm-core/YouCompleteMe'
Plug 'itchyny/lightline.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'dracula/vim',{'as':'dracula'}
Plug 'jeaye/color_coded'
"Plug 'scrooloose/nerdcommenter'
call plug#end()

" lightline
    set laststatus=2
" vim-cpp-enhanced-highlight
    let g:cpp_member_variable_highlight = 1
    let g:cpp_class_decl_highlight = 1
    let g:cpp_class_scope_highlight = 1
" YCM
    let g:ycm_enable_diagnostic_signs = 0
    let g:ycm_enable_diagnostic_highlighting = 0
" color_coded
":colorsheme twilighted
