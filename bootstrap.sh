#!/bin/bash

echo "Getting latest version of submodules"

git submodule sync

echo "Copying current dot files to ~/.backupdotfiles"

mkdir ~/.backupdotfiles

cp ~/.bashrc ~/.backupdotfiles/
cp ~/.bash_logout ~/.backupdotfiles/
cp ~/.vimrc ~/.backupdotfiles/
cp -R ~/.vim ~/.backupdotfiles/
cp ~/.tmux.conf ~/.backupdotfiles/
cp ~/.gitconfig ~/.backupdotfiles/
cp -R ~/.bazaar ~/.backupdotfiles/

rm -f ~/.bashrc
rm -f ~/.bash_logout
rm -f ~/.vimrc
rm -rf ~/.vim
rm -f ~/.tmux.conf
rm -f ~/.gitconfig
rm -rf ~/.bazaar

echo "Symlinking new dot files"

# vim
ln -s $HOME/.dotfiles/vim $HOME/.vim
ln -s $HOME/.dotfiles/vim/vimrc $HOME/.vimrc

# bash
ln -s $HOME/.dotfiles/bash/bashrc $HOME/.bashrc
ln -s $HOME/.dotfiles/bash/bash_logout $HOME/.bash_logout

# tmux
ln -s $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf

# git
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig

# bazaar
ln -s $HOME/.dotfiles/bazaar $HOME/.bazaar

echo "Creating vim tmp directories"

mkdir vim/tmp
mkdir vim/tmp/backup
mkdir vim/tmp/swap

echo "Installing vim plugins using vundle"

vim -u $HOME/.vim/bundles.vim +BundleInstall +q

ln -s $HOME/.dotfiles/lein/user.clj $HOME/.lein/user.clj
