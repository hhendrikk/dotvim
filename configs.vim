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
    set guifont=Inconsolata-dz\ for\ Powerline\ Medium\ 12
    set background=dark
    set relativenumber
    set number
    colorscheme solarized
" }

" Formatting {
    set nowrap                      " Do not wrap long lines
    set autoindent                  " Indent at the same level of the previous line
    set shiftwidth=4                " Use indents of 4 spaces
    set expandtab                   " Tabs are spaces, not tabs
    set tabstop=4                   " An indentation every four columns
    set softtabstop=4               " Let backspace delete indent
    set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
    set splitright                  " Puts new vsplit windows to the right of the current
    set splitbelow                  " Puts new split windows to the bottom of the current
    
    
    autocmd BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix " PEP8
    
    autocmd BufNewFile,BufRead *.js,*.html,*.css set tabstop=2 softtabstop=2 shiftwidth=2 " Web
    
    autocmd BufEnter *.py highlight BadWhitespace ctermbg=red guibg=red
    autocmd BufEnter *.py match BadWhitespace /\s\+$/
" }
