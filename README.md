# dotvim

This is my .vim folder setup.

The plugins are managed by [VIM-Plug](https://github.com/junegunn/vim-plug).

## Installation

1. Clone the repo with `git clone https://github.com/0v3lh4/dotvim ~/.vim`
2. `cd ~/.vim`
3. `mkdir autoload`
4. `ln -s ~/.vim/vimrc ~/.vimrc` to make the .vimrc link on your home.
5. Install [VIM-Plug](https://github.com/junegunn/vim-plug) with `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
6. `vim +PlugInstall` to install all of the plugins.

## Requirements
1. Install Jedi `pip install jedi`
2. Install Flake8 `pip install flake8`
3. Install ctags `brew install ctags`

## Plugin List

That is the list of plugins used on my config.

* [vim-easymotion](https://github.com/easymotion/vim-easymotion) Vim motions on speed.
* [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter) Vim plugin for intensely orgasmic commenting.
* [majutsushi/tagbar](https://github.com/majutsushi/tagbar) Vim plugin that displays tags in a window, ordered by scope.
* [emmet-vim](https://github.com/mattn/emmet-vim) Vim plug-in which provides support for expanding abbreviations similar to emmet..
* [altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) Solarizes colorscheme.
* [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree) - File tree explorer.
* [fholgado/minibufexpl.vim](https://github.com/fholgado/minibufexpl.vim) - Elegant buffer explorer - takes very little screen space.
* [kien/ctrlp.vim](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder.
* [nvie/vim-flake8](https://github.com/nvie/vim-flake8) - Static syntax and style checker for Python source code.
* [davidhalter/jedi-vim](https://github.com/davidhalter/jedi-vim) - Jedi-vim is a VIM binding to the autocompletion library Jedi.
* [scrooloose/syntastic](https://github.com/scrooloose/syntastic) - Syntax checking.
* [yggdroot/indentline](https://github.com/yggdroot/indentline) - Visual indentation indication.
* [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) - Lightweigth status bar.
* [SirVer/ultisnips](https://github.com/tpope/SirVer/ultisnips) - UltiSnips - The ultimate snippet solution for Vim. Send pull requests to SirVer/ultisnips.
* [vim-snippets](https://github.com/tpope/vim-snippets) - vim-snipmate default snippets (Previously snipmate-snippets).
* [digitaltoad/vim-pug](https://github.com/digitaltoad/vim-pug) - Vim Pug (formerly Jade) template engine syntax highlighting and indention.
* [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter) - A Vim plugin which shows a git diff in the gutter (sign column) and stages/undoes hunks..
