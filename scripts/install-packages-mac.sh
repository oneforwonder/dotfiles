# Get OS X developer tools
echo xcode-select --install

# First install Homebrew, our macOS package manager
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo brew install cask

echo brew tap caskroom/fonts
echo brew tap caskroom/versions

# Text editors
echo brew install vim
echo brew install neovim/neovim/neovim
echo brew cask install bbedit
echo brew cask install atom
echo brew cask install atom-beta

# Web browsers
echo brew cask install google-chrome
echo brew cask install firefox
echo brew cask install torbrowser

# File sync
echo brew cask install google-drive
echo brew cask install dropbox

# Bittorrent client
echo brew cask install transmission

# Development
echo brew install git
echo brew install yarn

# Media
echo brew cask install vlc

# Virtual machines
echo brew cask install virtualbox

# Customization
echo brew cask install karabiner
echo brew cask install seil
echo brew cask install totalspaces
echo brew cask install contexts
echo brew cask install sizeup

# Terminal and command line programs
echo brew cask install iterm2
echo brew install coreutils
echo brew install findutils
echo brew install tmux
echo brew install trash
echo brew install the_silver_searcher

# Various utilities
echo brew cask install alfred
echo brew cask install the-unarchiver
echo brew cask install itsycal
echo brew cask install sip
echo brew cask install flux
echo brew cask install skitch

# Fonts
echo brew cask install font-fira-code

