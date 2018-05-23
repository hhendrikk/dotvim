call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'mattn/webapi-vim'
Plug 'othree/html5.vim'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'

" Plugins para o OmniSharp
Plug 'OmniSharp/omnisharp-vim'
Plug 'tpope/vim-dispatch'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'vim-syntastic/syntastic'

call plug#end()
