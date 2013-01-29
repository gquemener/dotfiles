#!/bin/bash

tput clear
tput cup 3 15

tput setaf 3
echo "DOT FILES INSTALLATION"

tput setaf 2
echo "> Updating git submodule..."
tput setaf 4
git submodule update --init

tput setaf 2
echo "> Creating dotfiles links..."
tput setaf 4
ln -nfs ~/bin/dotfiles/bashrc ~/.bashrc
ln -nfs ~/bin/dotfiles/zshrc ~/.zshrc
ln -nfs ~/bin/dotfiles/bash_aliases ~/.bash_aliases
ln -nfs ~/bin/dotfiles/vimrc ~/.vimrc
ln -nfs ~/bin/dotfiles ~/.vim
ln -nfs ~/bin/dotfiles/fonts ~/.fonts
ln -nfs ~/bin/dotfiles/gitconfig ~/.gitconfig
ln -nfs ~/bin/dotfiles/gitignore_global ~/.gitignore_global
ln -nfs ~/bin/dotfiles/psqlrc ~/.psqlrc
ln -nfs ~/bin/dotfiles/Xdefaults ~/.Xdefaults
ln -nfs ~/bin/dotfiles/toprc ~/.toprc
ln -nfs ~/bin/dotfiles/tmux.conf ~/.tmux.conf
ln -nfs ~/bin/dotfiles/teamocil ~/.teamocil
sudo ln -nfs ~/bin/dotfiles/git-core/templates/hooks/post-merge /usr/share/git-core/templates/hooks/post-merge

tput setaf 2
echo "> Reloading bashrc..."
tput setaf 4
. bashrc

tput setaf 2
echo "> Clearing font cache..."
tput setaf 4
fc-cache -vf

notify-send "Dot Files installation result" "$(git submodule | wc -l) bundles installed successfully: $(git submodule)" -i /usr/share/pixmaps/apple-green.png
