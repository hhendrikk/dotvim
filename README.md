# dotvim

This is my .vim folder setup.

The plugins are managed by [VIM-Plug](https://github.com/junegunn/vim-plug).

## Requirements
1. Install node [NodeJS](https://nodejs.org).
2. Install python [Python](https://python.org).

## Installation

1. Clone the repo with `git clone https://github.com/0v3lh4/dotvim ~/.vim`
2. `cd ~/.vim`
3. `mkdir autoload`
4. `ln -s ~/.vim/vimrc ~/.vimrc` to make the .vimrc link on your home.
5. Install [VIM-Plug](https://github.com/junegunn/vim-plug) with `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
6. `vim +PlugInstall` to install all of the plugins.
