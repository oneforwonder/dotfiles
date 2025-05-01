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
# brew install --cask visual-studio-code

# Web browsers
# brew install --cask google-chrome
# brew install --cask firefox
# brew install --cask torbrowser

# File sync
# brew install --cask google-drive

# Bittorrent client
# brew install --cask transmission

# Media
# brew install --cask vlc
# brew install --cask spotify

# Virtual machines
# brew install --cask virtualbox

# Customization
brew install --cask karabiner-elements
# brew install --cask sizeup
brew install --cask witch

# Terminal and command line programs
# brew install --cask iterm2
brew install coreutils
brew install findutils
brew install tmux
brew install trash
brew install the_silver_searcher
brew install thefuck

# Various utilities
brew install --cask alfred
# brew install --cask the-unarchiver
# brew install --cask itsycal
brew install --cask flux
# brew install --cask postman
# brew install --cask 1password

# Fonts
brew install --cask font-fira-code
