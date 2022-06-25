#!/bin/bash 

# bash script to install KDE desktop packages on the system
# check install.txt and install_kubuntu.txt for packages names

# Copyright (C) 2014-2022 Md Imam Hossain

# License
#	This program is free software; you can use it for any purposes but can not redistribute it and/or modify it.
#	This program is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY.

ifilesk=install_kubuntu.txt
rfilesk=remove_kubuntu.txt

for package in `cat $ifilesk`
do
apt-get -y install $package
done

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

if [ $? -ne 0 ]
then
echo "KDE desktop packages installation was unsuccessful"
else
echo "KDE desktop packages installation was successful"
fi

for package in `cat $rfilesk`
do
apt-get -y remove $package
done

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

if [ $? -ne 0 ]
then
echo "KDE desktop packages remove was unsuccessful"
else
echo "KDE desktop packages remove  was successful"
fi

exit 0
