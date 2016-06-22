" Vim Plugin Management (with Vundle)
"
" Vundle is a tool modeled on Ruby Bundler with the goal of making
" installing, updating and removing plugins as easy as possible.
" 
" This files lists the bundles I want. Then I can run :PluginInstall!
" to make sure all plugins listed are installed and up-to-date. 

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle itself
Plugin 'VundleVim/Vundle.vim'


" Essentials
" ------------------------------------------------------------------------------

" Find files/buffers with fuzzy search
Plugin 'ctrlpvim/ctrlp.vim'

" Style the statusline with Powerline symbols
Plugin 'bling/vim-airline'

" Case-intelligence for substitution, coercion, and abbreviations
Plugin 'tpope/vim-abolish'

" Perform actions on the text object around the cursor
Plugin 'tpope/vim-surround'

" Allows plugin actions to be repeatable
Plugin 'tpope/vim-repeat'


" Intriguing Prospects
" Need to integrate better into workflow
" ------------------------------------------------------------------------------

" Autocomplete
Plugin 'Valloric/YouCompleteMe'

" Snippets engine and library
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

" Multiple cursors (a la Sublime Text)
Plugin 'terryma/vim-multiple-cursors'

" Easily save and load sessions
Plugin 'xolox/vim-session'

" Quickly access recent files, sessions, and bookmarks from vim start screen
Plugin 'mhinz/vim-startify'

" Align text to columns
Plugin 'godlygeek/tabular'

" Track and use past yanks
Plugin 'maxbrunsfeld/vim-yankstack'

" Navigate directories in a visual tree
Plugin 'scrooloose/nerdtree'

" View and navigate ctags
Plugin 'majutsushi/tagbar'

" Organize notes and plans in a tree
Plugin 'jceb/vim-orgmode'


" Good for what they do
" ------------------------------------------------------------------------------

" Automatically match delimiters
Plugin 'jiangmiao/auto-pairs'

" Automatically reload changed vim configuration files
Plugin 'xolox/vim-reload'

" Use EditorConfig file to automatically follow project coding style
Plugin 'editorconfig/editorconfig-vim'

" Display hex and rgb(a) colors inline (in many filetypes, not just CSS)
Plugin 'ap/vim-css-color'

" Trace syntax highlighting; useful for debugging syntax files
Plugin 'ilya-bobyr/vim-HiLinkTrace'

" Add directory/project specific vim configuration files
Plugin 'embear/vim-localvimrc'

" Toggle, display and navigate marks
"Plugin 'kshenoy/vim-signature'

" Handle links in text
Plugin 'vim-scripts/utl.vim'

" Allow incrementing and decrementing dates
Plugin 'tpope/vim-speeddating'

" Open a calendar for timestamp insertion
Plugin 'mattn/calendar-vim'


" Dependency Resolution
" ------------------------------------------------------------------------------

" Used by xolox's vim-session and vim-reload
Plugin 'xolox/vim-misc'


" Git
" ------------------------------------------------------------------------------

" Runtime files for git
Plugin 'tpope/vim-git'


" Multi-Language
" ------------------------------------------------------------------------------

" Commenting for so many languages
Plugin 'scrooloose/nerdcommenter'

" Check for syntax or style errors in so many languages
Plugin 'scrooloose/syntastic'

" Split one line function/block to multiple lines and vice versa.
Plugin 'AndrewRadev/splitjoin.vim'

" Automatically end in Ruby, Vimscript, and other languages
Plugin 'tpope/vim-endwise'


" Python
" ------------------------------------------------------------------------------

" Python syntax highlighting
Plugin 'oneforwonder/python.vim'

" TODO: Investigate new syntax highlighter:
" Plugin 'hdima/python-syntax'


" Javascript
" ------------------------------------------------------------------------------

" Analyze Javascript files to autocomplete, jump to function definition, etc
Plugin 'ternjs/tern_for_vim'

" Javascript syntax highlighting with support for ES6
Plugin 'rjn945/yajs.vim'
"Plugin 'othree/yajs.vim'
"Plugin 'isRuslan/vim-es6'


" Clojure
" ------------------------------------------------------------------------------

" TODO: Re-evaluate these plugins. It's been a while and the ecosystem has
" probably changed
Plugin 'paredit.vim'
Plugin 'tpope/vim-fireplace'
Plugin 'tpope/vim-classpath'
Plugin 'guns/vim-clojure-static'


" Markdown
" ------------------------------------------------------------------------------

Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'


call vundle#end()
filetype plugin indent on
