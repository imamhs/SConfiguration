## About (SConfiguration)

I wanted to have a modern GNU/Linux distribution that will be able to run all different games and third party applications without having to install different distributions on different machines. Also, modern GNU/Linux distributions do not ship with support for legacy and classic applications and games. So, I created this package that allowed me to setup a stable modern GNU/Linux distribution with various supports not found by default in new GNU/Linux distributions.

Linux kernel-based distributions have a vast library of applications and support for various needs. This package contains scripts that are designed for setting up a backword compatible complete Linux desktop for freshly installed Ubuntu GNU/Linux operating system for desktop applications and gaming needs. Hence, it provides the following for everyday Linux usage:

- Allow running classic games and applications
  
- Additional file compressions support
  
- Additional codecs for various multimedia files support
  
- Additional filesystems support
  
- x86 32-Bit applications support as needed for many games and legacy applications
  
- Legacy libraries for supporting legacy games and applications
  
- Additional libraries for supporting various games and applications
  
- Optimise access to system resources for better gaming and peripheral support
  

## Installation

See versions.txt for supported Ubuntu versions.

You need an Internet connection for updating the system repositories database and downloading new packages from the online repositories. Extract compat.tar.gz in the scripts folder and enable Ubuntu main, universe, restricted and multiverse repositories. Complete any pending system updrages. Finally, try running the follwing commands from the terminal to install all the support in the Ubuntu mentioned above:

sudo apt-get update  
sudo apt-get install -f  
sudo ./Setup-Packages.sh  
sudo ./Setup-Groups.sh enter_user_name_here  
sudo ./Setup-Additional-Packages.sh  
sudo ./Setup-Links.sh  
sudo ./Setup-Development-Packages.sh  
sudo ./Post-Configure.sh

## Programs supported

The goal of this package is to enable almost all 32-Bit and 64-Bit programs and games to work available on Linux. Some programs which are not designed to be glibc and kernel portable will not work as usual. Programs using most common applications frameworks (i.e. GTK, SDL) should behave normally. Check out **Tests.md** document to find out programs which are varified to work.

### Package created by (a GNU/Linux enthusiast)

Md Imam Hossain (emamhd@gmail.com)Tests.md
