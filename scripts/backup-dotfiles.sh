#!/bin/bash

mkdir -p ~/.dotfiles/backup

cp ~/.bashrc ~/.dotfiles/backup/
cp ~/.bash_login ~/.dotfiles/backup/
cp ~/.bash_profile ~/.dotfiles/backup/
cp ~/.bash_logout ~/.dotfiles/backup/
cp ~/.vimrc ~/.dotfiles/backup/
cp -R ~/.vim ~/.dotfiles/backup/
cp ~/.atom/config.cson ~/.dotfiles/backup
cp ~/.atom/init.coffee ~/.dotfiles/backup
cp ~/.atom/keymap.cson ~/.dotfiles/backup
cp ~/.atom/snippets.cson ~/.dotfiles/backup
cp ~/.atom/styles.less ~/.dotfiles/backup
cp ~/.tmux.conf ~/.dotfiles/backup/
cp ~/.gitconfig ~/.dotfiles/backup/
cp ~/.gitignore_global ~/.dotfiles/backup/
cp ~/.ssh/config ~/.dotfiles/backup/sshconfig
cp ~/.mackup.cfg ~/.dotfiles/backup/

