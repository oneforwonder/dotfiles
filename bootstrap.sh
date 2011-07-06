#!/bin/bash

echo "Getting latest version of submodules"

git submodule sync

echo "Copying current dot files to ~/.backupdotfiles"

mkdir ~/.backupdotfiles

cp ~/.bashrc ~/.backupdotfiles/
cp ~/.bash_logout ~/.backupdotfiles/
cp ~/.vimrc ~/.backupdotfiles/
cp ~/.vim ~/.backupdotfiles/
cp ~/.tmux.conf ~/.backupdotfiles/
cp ~/.gitconfig ~/.backupdotfiles/
cp ~/.bazaar ~/.backupdotfiles/

rm -f ~/.bashrc
rm -f ~/.bash_logout
rm -f ~/.vimrc
rm -rf ~/.vim
rm -f ~/.tmux.conf
rm -f ~/.gitconfig
rm -rf ~/.bazaar

echo "Symlinking new dot files"

ln -s .bashrc ~/
ln -s .bash_logout ~/
ln -s .vimrc ~/
ln -s .vim ~/
ln -s .tmux.conf ~/
ln -s .gitconfig ~/
ln -s .bazaar ~/

echo "Installing vim plugins using vundle"

vim -u .vim/bundles.vim +BundleInstall +q
