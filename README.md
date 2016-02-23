# dotvim

This is my .vim folder setup.

The plugins are managed by [VIM-Plug](https://github.com/junegunn/vim-plug).

## Installation

1. Clone the repo with `git clone https://github.com/0v3lh4/dotvim ~/.vim`
2. `cd ~/.vim`
3. `ln -s ~/.vim/vimrc ~/.vimrc` to make the .vimrc link on your home.
4. Install [VIM-Plug](https://github.com/junegunn/vim-plug) with `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
5. `vim +PlugInstall` to install all of the plugins.

## Requirements
1. Install Jedi `pip install jedi`
2. Install Flake8 `pip install flake8`

## Plugin List

That is the list of plugins used on my config.

* [altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized) Solarizes colorscheme.
* [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree) - File tree explorer.
* [jlanzarotta/bufexplorer](https://github.com/jlanzarotta/bufexplorer) - Quickly and easily switch between buffers.
* [kien/ctrlp.vim](https://github.com/kien/ctrlp.vim) - Fuzzy file, buffer, mru, tag, etc finder.
* [nvie/vim-flake8](https://github.com/nvie/vim-flake8) - Static syntax and style checker for Python source code.
* [davidhalter/jedi-vim](https://github.com/davidhalter/jedi-vim) - Jedi-vim is a VIM binding to the autocompletion library Jedi.
* [scrooloose/syntastic](https://github.com/scrooloose/syntastic) - Syntax checking.
* [yggdroot/indentline](https://github.com/yggdroot/indentline) - Visual indentation indication.
* [itchyny/lightline.vim](https://github.com/itchyny/lightline.vim) - Lightweigth status bar.
* [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive) - Git commands inside vim.
