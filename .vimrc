set nocompatible
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  " alternatively, pass a path where Vundle should install plugins
  "call vundle#begin('~/some/path/here')

  " let Vundle manage Vundle, required
  Plugin 'gmarik/Vundle.vim'

  " The following are examples of different formats supported.
  " Keep Plugin commands between vundle#begin/end.
  " plugin on GitHub repo
  Plugin 'tpope/vim-fugitive'
  " plugin from http://vim-scripts.org/vim/scripts.html
  Plugin 'vim-scripts/proton'

  " syntax checker
  Plugin 'scrooloose/syntastic'

  " Colorschemes
  Plugin 'flazz/vim-colorschemes'

  " Fuzzy search
  Plugin 'kien/ctrlp.vim'

  "Autocomplete
  Plugin 'valloric/youcompleteme'

  " Easy motions
  Plugin 'Lokaltog/vim-easymotion'

  " Templates
  Plugin 'aperezdc/vim-template'
  
  " Simplenote integration
  Plugin 'mrtazz/simplenote.vim'

  " XML integration
  Plugin 'sukima/xmledit'

  "Explorer
  Plugin 'scrooloose/nerdtree'

  " All of your Plugins must be added before the following line
  call vundle#end()            " required
  filetype plugin indent on    " required

scriptencoding utf-8           " utf-8 all the way
set encoding=utf-8

set history=256                " Number of things to remember in history.
set timeoutlen=250             " Time to wait after ESC (default causes an annoying delay)
set clipboard=unnamed          " Yanks go on clipboard instead.
set pastetoggle=<F10>          " toggle between paste and normal: for 'safer' pasting from keyboard
set shiftround                 " round indent to multiple of 'shiftwidth'

:au FocusLost * silent! :wa            " Autosave

set autowrite                  " Writes on make/shell commands
set autoread

set nobackup
set nowritebackup
set directory=/tmp//           " prepend(^=) $HOME/.tmp/ to default path; use full path as backup filename(//)
set noswapfile                 "

set hidden                     " The current buffer can be put to the background without writing to disk

set hlsearch                   " highlight search
set ignorecase                 " be case insensitive when searching
set smartcase                  " be case sensitive when input has a capital letter
set incsearch                  " show matches while typing

set nowrap
set textwidth=0                " Don't wrap lines by default

set tabstop=2                  " tab size eql 2 spaces
set softtabstop=2
set shiftwidth=2               " default shift width for indents
set expandtab                  " replace tabs with ${tabstop} spaces
set smarttab                   "

set backspace=indent
set backspace+=eol
set backspace+=start

" Enable wrapping in a good manner
set wrap
set linebreak
set nolist

set autoindent
set cindent
set indentkeys-=0#            " do not break indent on #
set cinkeys-=0#
set cinoptions=:s,ps,ts,cs
set cinwords=if,else,while,do
set cinwords+=for,switch,case
" "}}}

" Visual "{{{
" set synmaxcol=250              " limit syntax highlighting to 128 columns

set mouse=a "enable mouse in GUI mode
set mousehide                 " Hide mouse after chars typed

set novisualbell              " No blinking
set noerrorbells              " No noise.
set vb t_vb=                  " disable any beeps or flashes on error

set background=light
syntax enable
colorscheme solarized            " Colorscheme of choice

set nohlsearch                " no highlighting of things I've searched

" Syntastic settings
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl', 'podchecker']

" Make vim 256 colors by default
set t_Co=256

let mapleader=","
map <Leader> <Plug>(easymotion-prefix)

map <F5> tabe ~/.vimrc

" Line wrappers
map j gj
map k gk

let g:solarized_termcolors=256
