# dotvim

This is my .vim folder setup.

The plugins are managed by [VIM-Plug](https://github.com/junegunn/vim-plug).

## Requirements
1. Install node [NodeJS](https://nodejs.org).
2. Install python [Python](https://python.org).

## Installation

1. Clone the repo with `git clone https://github.com/0v3lh4/dotvim ~/.vim`
2. `cd ~/.vim`
3. `md backups`
4. `md swaps`
5. `md undos`
3. `md autoload`
  - `md c:\Users\[username]\vimfiles` to powershell
  - `md c:\Users\[username]\vimfiles\autoload` to powershell
4. `ln -s ~/.vim/vimrc ~/.vimrc` to make the .vimrc link on your home.
  - `cmd /c mklink C:\Users\[username]\.vimrc c:\Users\[username]\.vim\vimrc` to powershell
5. Install [VIM-Plug](https://github.com/junegunn/vim-plug) with `curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
6. `vim +PlugInstall` to install all of the plugins.
