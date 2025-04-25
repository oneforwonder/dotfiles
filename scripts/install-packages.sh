#!/bin/bash

parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

command_exists () {
  command -v "$1" >/dev/null 2>&1
}

# # Install and set up virtualenv
# if command_exists virtualenv ; then
#   echo "virtualenv already installed."
# else
#   echo "Installing virtualenv..."
#   pip install virtualenv
# fi

# # Install RVM and Ruby
# if command_exists rvm ; then
#   echo "RVM already installed."
# else
#   echo "Installing RVM and Ruby..."
#   curl -sSL https://get.rvm.io | bash -s stable --ruby
# fi

# # Install NVM and Node.js
# if command_exists nvm ; then
#   echo "NVM already installed."
# else
#   echo "Installing NVM and Node..."
#   curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
#   #. ~/.nvm/nvm.sh
#   nvm install stable
# fi

if [ "$(uname)" == "Darwin" ]; then
  echo "Installing macOS packages"
  source "$parent_path/install-packages-mac.sh"
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Installing Kubuntu Linux packages"
  source "$parent_path/install-packages-kubuntu.sh"
fi
