#!/bin/bash

GREEN="\\033[0;32m"
NORMAL="\\033[0;39m"

git submodule update --init 
ln -nfs ~/bin/dotfiles/bashrc ~/.bashrc
ln -nfs ~/bin/dotfiles/bash_aliases ~/.bash_aliases
ln -nfs ~/bin/dotfiles/vimrc ~/.vimrc
ln -nfs ~/bin/dotfiles ~/.vim
ln -nfs ~/bin/dotfiles/fonts ~/.fonts
ln -nfs ~/bin/dotfiles/gitconfig ~/.gitconfig

. bashrc
fc-cache -vf

echo -e "$GREEN" "Installed Plugin:" "$NORMAL"
git submodule
