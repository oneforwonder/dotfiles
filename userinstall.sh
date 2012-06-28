# This requires normal powers

# Install Leiningen and Clojure
mkdir ~/.bin
wget -O ~/.bin/lein "https://raw.github.com/technomancy/leiningen/stable/bin/lein"
chmod 775 ~/.bin/lein
~/.bin/lein
~/.bin/lein plugin install swank-clojure 1.4.2

# Set up home directory folders
rmdir ~/Music
rmdir ~/Public
rmdir ~/Templates
rmdir ~/Videos
rmdir ~/Pictures
mkdir ~/Code
mkdir ~/Misc
mkdir ~/Images

# Install and set up virtualenv
wget -O ~/.bin/virtualenv https://bitbucket.org/ianb/virtualenv/raw/tip/virtualenv.py
chmod 777 ~/.bin/virtualenv
mkdir $HOME/.venv
virtualenv --no-site-packages $HOME/.venv/base

# Install RVM, Ruby and Rails
curl -L get.rvm.io | bash -s stable --rails

# Set up dotfiles
git clone https://github.com/rjn945/dotfiles.git ~/.dotfiles
chmod 755 ~/.dotfiles/dotfileinstall.sh
~/.dotfiles/dotfileinstall.sh


# The rest has to be done manually.

echo "This rest is too tricky for me. You do it, human."

# Download Wing IDE from: http://wingware.com/downloads/wingide/

# Set up Firefox
# Log in to sync
# Install extensions: Adblock Plus, Greasemonkey, Pentadactyl, Tree Style Tabs

# Fix Dolphin
# Show menubar
# Make places sidebar bigger
# Check Editable location bar
# Increase icon size
# Trash: Delete files older than 50 days
# Use common view properties for all folders
# Add Up and Home to toolbar. Remove Preview and Split.
# Some of these changes are stored in ~/.kde/share/apps/Dolphin/dolphinui.rc
# Others are stored in ~/.kde/share/config/dolphinrc

# KDE window settings
# KWallet: keep above and keep focus

# Fix KDE appearance
# Download Aya and Elegance destkop themes
# Use Aya overall and Elegance for task items
# Change the window decoration to Plastik
# The change the title bar buttons

# Set up pager
# 4 desktops (Now, Dev1, Dev2, Alt) in 2x2 grid
# Show icons

# Set up panel
# Launcher, pager, taskbar, system tray, time

# Configure taskbar
# Only show windows from current desktop
# Maximum rows: 1

# Set up keyboard
# Add US keyboard layout
# Hide system tray icon
# Use Caps Lock as extra Control key

# Set up KDE shortcuts
# All start with Ctrl-Shift
# KRunner:           R
# Previous Desktop:  H
# Next Desktop:      S
# Previous Window:   P
# Next Window:       N
# Close Window:      W
# Maximize Window:   X
# Minimize Window:   M

# Set up Konsole shortcuts
# Remove key shortcuts that conflict with KWin bindings
# Make sure font used in Deja Vu Sans Mono

# Set up KMenu
# Favorites: Firefox, Chrome, Writer, Kate, Dolphin, Konsole, Amarok, Adept, System Settings
# Organize folders

# Configure Konsole
# No menubar or scrollbars
# No window border
# Stored in ~/.kde/share/config/kwinrulesrc

# Install graphics drivers through Additional Drivers, if necessary

# Configure Kate
# Use vim keybindings
# Do not save local ~ file backups

