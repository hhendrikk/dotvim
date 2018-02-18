" General {
    set nocompatible

    syntax enable
    set mouse=a
    set mousehide
    set encoding=utf-8
    
    set nobackup            " Disable backup
    set nowritebackup
    set noswapfile          " Disable swap
    
    set clipboard=unnamed
    set backspace=indent,eol,start
    set guioptions=0
    
    if has("gui_running")
      " Maximize gvim window
      set lines=999 columns=999
    endif

    filetype plugin indent on

    set magic                      " Enable extended regexp
    set mousehide                  " Hide mouse pointer while typing
    set noerrorbells               " Disable error bells
" }

" UI {
    if has("win32")
      set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h10
    else
      set guifont=Source\ Code\ Pro\ ExtraLight:h14
    endif

    set number
    set relativenumber
    color dracula

    set lazyredraw
" }

" Formatting {
    set colorcolumn=73
    set cursorline
    set encoding=utf-8 nobomb
    set history=5000
    set laststatus=2
    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=2                " Use indents of 2 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=2                   " An indentation every four columns
    set softtabstop=2               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    
    set foldmethod=syntax           " set folding syntax
    set foldnestmax=10              "deepest fold is 10 levels
    set nofoldenable                "dont fold by default
    set foldlevel=1                 "this is just what i use

    set list listchars=tab:▸\ ,trail:·,eol:↴,nbsp:_
    
    set hlsearch
" }

" Auto CMD {
    autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" }
