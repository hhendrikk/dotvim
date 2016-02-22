call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer' 
Plug 'kien/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'nvie/vim-flake8'
Plug 'powerline/powerline'
Plug 'davidhalter/jedi-vim'
Plug 'scrooloose/syntastic'

call plug#end()

" Plugins settings
filetype plugin indent on
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$']

" General settings
syntax enable
set clipboard=unnamed
set backspace=indent,eol,start
set guioptions=0

" Editor settings
set guifont=Inconsolata:h11
set background=dark
colorscheme solarized
set relativenumber
set number
set encoding=utf-8

" Autocmds
" PEP8
autocmd BufNewFile,BufRead *.py set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

" Web
autocmd BufNewFile,BufRead *.js,*.html,*.css set tabstop=2 softtabstop=2 shiftwidth=2

" BadWhitespaces
autocmd BufEnter *.py highlight BadWhitespace ctermbg=red guibg=red
autocmd BufEnter *.py match BadWhitespace /\s\+$/

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
