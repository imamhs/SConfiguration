About
------------

Linux kernel-based distributions have a vast library of applications and support for various needs. This package contains scripts that are designed for setting up a complete Linux desktop experience for just installed Kubuntu GNU/Linux operating system for desktop applications and gaming. It provides the following for everyday Linux usage:

- Additional file compressions support

- Additional filesystems support

- x86 32-bit applications support as needed for many games and legacy applications

- Additional codecs for various multimedia files support

- Legacy libraries for supporting legacy games and applications

- Additional libraries for supporting various games

- Optimise access to system resources for better gaming and peripheral support

## Installation

See versions.txt for supported Ubuntu versions.

You need an Internet connection for updating the system repositories database and downloading new packages from the online repositories. Extract compat.tar.gz in the scripts folder and enable Ubuntu main, universe, restricted and multiverse repositories. Complete any pending system updrages. Finally, try running the follwing commands from the terminal to install all the support in the Ubuntu mentioned above:

sudo apt-get update  
sudo apt-get install -f  
sudo ./Setup-Packages.sh  
sudo ./Setup-Groups.sh [enter user name here]  
sudo ./Setup-Additional-Packages.sh  
sudo ./Setup-Links.sh

### Author

Md Imam Hossain (emamhd@gmail.com)
