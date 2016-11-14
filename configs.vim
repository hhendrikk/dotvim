" General {
    filetype plugin indent on
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
" }

" UI {
    if has("win32")
      set guifont=Source\ Code\ Pro\ Light:h10
    else
      set guifont=Source\ Code\ Pro\ ExtraLight:h14
    endif

    set background=dark
    set number
    set relativenumber
    colorscheme solarized
" }

" Formatting {
    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=2                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=2                   " An indentation every four columns
    set softtabstop=2               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    
    set foldmethod=syntax           " set folding syntax
    set foldnestmax=10              "deepest fold is 10 levels
    set nofoldenable                "dont fold by default
    set foldlevel=1                 "this is just what i use
" }

" Auto CMD {
    autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
    autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" }
