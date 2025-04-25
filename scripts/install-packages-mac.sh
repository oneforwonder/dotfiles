# Get OS X developer tools
xcode-select --install

# First install Homebrew, our macOS package manager
command_exists () {
  command -v "$1" >/dev/null 2>&1
}

# Install and set up brew
if command_exists brew ; then
  echo "Homebrew already installed. Upgrading packages"
  brew upgrade
else
  echo "Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi


# Homebrew Cask lets us install macOS applications
brew install cask

# Add some formula repos
brew tap caskroom/fonts
brew tap caskroom/versions

# Mackup (we'll need it for the next install step)
brew install mackup

# Text editors
# brew install vim
brew install neovim
# brew cask install visual-studio-code

# Web browsers
# brew cask install google-chrome
# brew cask install firefox
# brew cask install torbrowser

# File sync
# brew cask install google-drive

# Bittorrent client
# brew cask install transmission

# Media
# brew cask install vlc
# brew cask install spotify

# Virtual machines
# brew cask install virtualbox

# Customization
brew cask install karabiner-elements
# brew cask install sizeup
brew cask install witch

# Terminal and command line programs
# brew cask install iterm2
brew install coreutils
brew install findutils
brew install tmux
brew install trash
brew install the_silver_searcher
brew install thefuck

# Various utilities
brew cask install alfred
# brew cask install the-unarchiver
# brew cask install itsycal
brew cask install flux
# brew cask install postman
# brew cask install 1password

# Fonts
brew cask install font-fira-code
