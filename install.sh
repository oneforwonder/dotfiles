# This requires superpowers
sudo -i

# Install essential software
apt-get update
apt-get install aptitude
aptitude install gcc make

# Connect to Epee
#echo "sshfs#aclimatt@epee.ccs.ucsb.edu:External /media/epee fuse user,noauto 0 0" >> /etc/fstab
#mkdir /media/epee
#chmod 777 /media/epee
#mount /media/epee
# Mount Epee automatically on network connect
# Copy home directory
#kde-cp /media/epee/Miscellaneous/Backup/rob /home

# Add other package sources
add-apt-repository ppa:cassou/emacs
add-apt-repository 'deb http://dl.google.com/linux/deb/ stable non-free main'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
#echo "deb http://download.virtualbox.org/virtualbox/debian natty contrib" >> /etc/apt/#sources.list	# distro ***
#kde-cp /home/rob/.rjn/sources.list.d /etc/apt	 # distro ***

# Install the rest of the software
aptitude remove kopete bluedevil kppp kmousetool kmag synatiks kvkbd rekonq
aptitude install google-chrome firefox flashplugin-installer 
aptitude install gimp inkscape digikam 
aptitude install audacity easytag
aptitude install unison sshfs tmux curl
aptitude install git subversion bzr mercurial
aptitude install zlib1g-dev
aptitude install vim gvim kdevelop eclipse kdiff3 qtcreator ctags emacs-snapshot
aptitude upgrade
#aptitude install virtualbox-4.0 # virtualbox-***

# The rest requires normal powers
exit

# Install Leiningen and Clojure
mkdir ~/.bin
wget -O ~/.bin/lein "https://raw.github.com/technomancy/leiningen/stable/bin/lein"
chmod 775 ~/.bin/lein
~/.bin/lein

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
mkdir .venv
~/virtualenv ~/.venv/base

# Install RVM, Ruby and Rails
curl -L get.rvm.io | bash -s stable --rails

# While that's going, do the rest manually...

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
# Maximize Window:   M

# Set up Konsole shortcuts
# Load konsole shortcuts rc file (includes only Shift-Insert)

# Set up KMenu
# Favorites: Firefox, Chrome, Writer, Kate, Dolphin, Konsole, Amarok, Adept, System Settings
# Organize folders

# Configure Konsole
# No menubar or scrollbars
# No window border
# Stored in ~/.kde/share/config/kwinrulesrc

# Desktop only:
# Install graphics drivers through Additional Drivers
