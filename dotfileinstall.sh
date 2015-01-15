#!/bin/bash

echo "Getting latest version of submodules"

git submodule sync

echo "Copying current dot files to ~/.backupdotfiles"

mkdir ~/.backupdotfiles

cp ~/.bashrc ~/.backupdotfiles/
cp ~/.bash_login ~/.backupdotfiles/
cp ~/.bash_profile ~/.backupdotfiles/
cp ~/.bash_logout ~/.backupdotfiles/
cp ~/.vimrc ~/.backupdotfiles/
cp -R ~/.vim ~/.backupdotfiles/
cp -R ~/.emacs.d ~/.backupdotfiles/
cp ~/.tmux.conf ~/.backupdotfiles/
cp ~/.gitconfig ~/.backupdotfiles/
cp -R ~/.bazaar ~/.backupdotfiles/
cp ~/.ssh/config ~/.backupdotfiles/

rm -f ~/.bashrc
rm -f ~/.bash_logout
rm -f ~/.vimrc
rm -rf ~/.vim
rm -f ~/.emacs.d/init.el
rm -f ~/.tmux.conf
rm -f ~/.gitconfig
rm -rf ~/.bazaar
rm -f ~/.ssh/config

echo "Symlinking new dot files"

# vim
ln -s $HOME/.dotfiles/vim $HOME/.vim
ln -s $HOME/.dotfiles/vim/vimrc $HOME/.vimrc

# emacs
mkdir $HOME/.emacs.d/
ln -s $HOME/.dotfiles/emacs/init.el $HOME/.emacs.d/init.el
ln -s $HOME/.dotfiles/emacs/rjn-theme.el $HOME/.emacs.d/rjn-theme.el

# bash
ln -s $HOME/.dotfiles/bash/bashrc $HOME/.bashrc
ln -s $HOME/.dotfiles/bash/bash_login $HOME/.bash_login
ln -s $HOME/.dotfiles/bash/bash_profile $HOME/.bash_profile
ln -s $HOME/.dotfiles/bash/bash_logout $HOME/.bash_logout

# tmux
ln -s $HOME/.dotfiles/tmux/tmux.conf $HOME/.tmux.conf

# git
ln -s $HOME/.dotfiles/git/gitconfig $HOME/.gitconfig

# bazaar
ln -s $HOME/.dotfiles/bazaar $HOME/.bazaar

# ssh
mkdir $HOME/.ssh
ln -s $HOME/.dotfiles/ssh/config $HOME/.ssh/config

# lein
ln -s $HOME/.dotfiles/lein/user.clj $HOME/.lein/user.clj

echo "Creating vim tmp directories"

mkdir $HOME/.vim/tmp
mkdir $HOME/.vim/tmp/backup
mkdir $HOME/.vim/tmp/swap

echo "Installing vim plugins using vundle"

git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
vim -u $HOME/.vim/bundles.vim +BundleInstall +qall

echo "Installing Powerline font for vim and tmux"

mkdir $HOME/.fonts
$HOME/.vim/bundle/vim-powerline/fontpatcher/fontpatcher /usr/share/fonts/truetype/ttf-dejavu/DejaVuSansMono.ttf
mv DejaVuSansMono-Powerline.ttf $HOME/.fonts

echo "Installing Emacs Evil"

mkdir $HOME/.emacs.d/evil
git clone git://gitorious.org/evil/evil.git $HOME/.emacs.d/evil
