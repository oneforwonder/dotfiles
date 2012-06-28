Rob Nagle's dotfiles
====================

> Everything I need to get my computer feeling like home.


Fresh Computer Install
----------------------

Sadly, most fresh Linux installations do not come with git. As a result, there is a bootstrapping problem. 

Here's what to do:

* Download the [root install script](https://raw.github.com/rjn945/dotfiles/master/rootinstall.sh) and the [user install script](https://raw.github.com/rjn945/dotfiles/master/userinstall.sh)
* Run the root install script
    sudo rootinstall.sh
* Run the user install script. (This will automatically clone this project into ~/.dotfiles and install the dotfiles.)
    ./userinstall.sh
* Follow the instructions in userinstall.sh to perform the tasks that could not be automated. 
* Enjoy your new Linux installation, set up in record time.
