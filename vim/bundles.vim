" Vim bundles (plugins)
"
" Vundle is a tool modeled on Ruby Bundler with the goal of making
" installing, updating and removing plugins as easy as possible.
" 
" This files lists the bundles I want. Then I can run :BundleInstall!
" to make sure all plugins listed are installed and up-to-date. 

set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" vundle itself
Bundle 'gmarik/vundle'

" essentials
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'scrooloose/nerdcommenter'

" less essential but used
Bundle 'xolox/vim-reload'
Bundle 'xolox/vim-misc'

" use someday?
Bundle 'tpope/vim-fugitive'
Bundle 'mileszs/ack.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'ShowMarks7'
Bundle 'YankRing.vim'
Bundle 'garbas/vim-snipmate'
Bundle 'ervandew/supertab'
Bundle 'taglist.vim'

" dependency satisifying
Bundle 'tomtom/tlib_vim'
Bundle 'MarcWeber/vim-addon-mw-utils'

" Python
Bundle 'rjn945/python.vim'

" HTML
Bundle 'HTML-AutoCloseTag'

" Clojure
Bundle 'paredit.vim'
Bundle 'tpope/vim-fireplace'
Bundle 'tpope/vim-classpath'
Bundle 'guns/vim-clojure-static'
"Bundle 'slimv.vim'
"Bundle 'VimClojure'

filetype plugin indent on
