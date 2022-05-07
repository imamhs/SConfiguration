#!/bin/bash

# bash script to run sh files in the terminal emulators

# Copyright (C) 2014-2015 Md Imam Hossain

# License
#	This program is free software; you can use it for any purposes but can not redistribute it and/or modify it.
#	This program is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY.

cd "`dirname "$0"`"

UNAME=`whoami`

echo -e "SConfiguration for Kubuntu\nAuthor: Md Imam Hossain\nCopyright (C) 2014-2016\nAll rights reserved.\n\n"
echo "Operating System:" `lsb_release -a | grep Description: | cut -d ":" -f2`
echo "Linux Kernel:" `uname -r`
echo -e "\nPress Enter key to start"
read

clear
echo "This will take a while."
sleep 5
clear
echo "Setting up repositories..."
echo "To skip this stage press Ctrl + c, when ask for password"
sleep 2
sudo ./Setup-Repositories.sh

clear
echo "Configuring Packages..."
echo "To skip this stage press Ctrl + c, when ask for password"
sleep 2
sudo ./Setup-Packages.sh
sudo ./Setup-Links.sh

clear
echo "Configuring Groups and users..."
echo "To skip this stage press Ctrl + c, when ask for password"
sleep 2
sudo ./Setup-Groups.sh $UNAME
# sudo ./Setup-Desktop.sh

clear
echo "All done!"
echo "Press Enter to Exit"
read

exit 0
