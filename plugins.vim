call plug#begin('~/.vim/plugged')

Plug 'editorconfig/editorconfig-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'mattn/webapi-vim'
Plug 'othree/html5.vim'
Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-fugitive'
Plug 'ternjs/tern_for_vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'tomtom/tcomment_vim'
Plug 'ryanoasis/vim-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()
