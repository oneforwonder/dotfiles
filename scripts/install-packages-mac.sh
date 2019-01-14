# Get OS X developer tools
xcode-select --install

# First install Homebrew, our macOS package manager
command_exists () {
  command -v "$1" >/dev/null 2>&1
}

# Install and set up virtualenv
if command_exists brew ; then
  echo "Homebrew already installed. Upgrading packages"
  brew upgrade
else
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi


# Homebrew Cask lets us install macOS applications
brew install cask

# Add some formula repos
brew tap caskroom/fonts
brew tap caskroom/versions

# Text editors
brew install vim
brew install neovim/neovim/neovim
brew cask install bbedit
brew cask install atom
brew cask install atom-beta

# Web browsers
brew cask install google-chrome
brew cask install firefox
brew cask install torbrowser

# File sync
brew cask install google-drive
brew cask install dropbox

# Bittorrent client
brew cask install transmission

# Development
brew install git
brew install yarn

# Media
brew cask install vlc

# Virtual machines
brew cask install virtualbox

# Customization
brew cask install karabiner-elements
brew cask install totalspaces
brew cask install sizeup

# Terminal and command line programs
brew cask install iterm2
brew install coreutils
brew install findutils
brew install tmux
brew install trash
brew install the_silver_searcher

# Various utilities
brew cask install alfred
brew cask install the-unarchiver
brew cask install itsycal
brew cask install sip
brew cask install flux
brew cask install skitch
brew cask install postman

# Fonts
brew cask install font-fira-code
