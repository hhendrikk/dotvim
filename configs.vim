" General {
    set nocompatible               " Don't make vim vi-compatibile

    syntax on                      " Enable syntax highlighting

    if has('autocmd')
        filetype plugin indent on
        "           │     │    └──── Enable file type detection
        "           │     └───────── Enable loading of indent file
        "           └─────────────── Enable loading of plugin files
    endif

    set autoindent                 " Copy indent to the new line

    set backspace=indent           " ┐
    set backspace+=eol             " │ Allow `backspace`
    set backspace+=start           " ┘ in insert mode

    set backupdir=~/.vim/backups   " Set directory for backup files

    set clipboard=unnamed          " ┐
                                   " │ Use the system clipboard
    if has('unnamedplus')          " │ as the default register
        set clipboard+=unnamedplus " │
    endif                          " ┘

    set cpoptions+=$               " When making a change, don't
                                   " redisplay the line, and instead,
                                   " put a `$` sign at the end of
                                   " the changed text

    set colorcolumn=80             " Highlight certain column(s)
    set directory=~/.vim/swaps     " Set directory for swap files

    set encoding=utf-8 nobomb      " Use UTF-8 without BOM
    set history=5000               " Increase command line history
    set hlsearch                   " Enable search highlighting
    set ignorecase                 " Ignore case in search patterns

    set incsearch                  " Highlight search pattern as
                                   " it is being typed

    set laststatus=2               " Always show the status line

    set lazyredraw                 " Do not redraw the screen while
                                   " executing macros, registers
                                   " and other commands that have
                                   " not been typed

    set listchars=tab:▸\           " ┐
    set listchars+=trail:·         " │ Use custom symbols to
    set listchars+=eol:↴           " │ represent invisible characters
    set listchars+=nbsp:_          " ┘

    set magic                      " Enable extended regexp
    set mousehide                  " Hide mouse pointer while typing
    set noerrorbells               " Disable error bells

    set nojoinspaces               " When using the join command,
                                   " only insert a single space
                                   " after a `.`, `?`, or `!`

    set nostartofline              " Kept the cursor on the same column
    set number                     " Show line number
    set relativenumber             " Show relative numbers

    set numberwidth=5              " Increase the minimal number of
                                   " columns used for the `line number`

    set report=0                   " Report the number of lines changed
    set ruler                      " Show cursor position

    set scrolloff=5                " When scrolling, keep the cursor
                                   " 5 lines below the top and 5 lines
                                   " above the bottom of the screen

    set shortmess=aAItW            " Avoid all the hit-enter prompts
    set showcmd                    " Show the command being typed
    set showmode                   " Show current mode
    set spelllang=en_us            " Set the spellchecking language

    set smartcase                  " Override `ignorecase` option
                                   " if the search pattern contains
                                   " uppercase characters

    set synmaxcol=2500             " Limit syntax highlighting (this
                                   " avoids the very slow redrawing
                                   " when files contain long lines)

    set tabstop=2                  " ┐
    set softtabstop=2              " │ Set global <TAB> settings
    set shiftwidth=2               " │ http://vimcasts.org/e/2
    set expandtab                  " ┘

    set ttyfast                    " Enable fast terminal connection
    set undodir=~/.vim/undos       " Set directory for undo files
    set undofile                   " Automatically save undo history

    set visualbell                 " ┐
    set noerrorbells               " │ Disable beeping and window flashing
    set t_vb=                      " ┘ https://vim.wikia.com/wiki/Disable_beeping

    set wildmenu                   " Enable enhanced command-line
                                   " completion (by hitting <TAB> in
                                   " command mode, Vim will show the
                                   " possible matches just above the
                                   " command line with the first
                                   " match highlighted)

    set winminheight=0             " Allow windows to be squashed
    
    set autoread                   " Reload files
" }

" UI {
    if has('gui_running')
      set guioptions-=T
      au GUIEnter * simalt ~x
      set guifont=FuraCode\ Nerd\ Font\ Mono:h14
    endif
    color dracula
" }

" PYTHON {
    set pythonthreedll=C:\Python38\python38.dll
    set pythonthreehome=C:\Python38
" }
