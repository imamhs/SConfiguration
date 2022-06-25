#!/bin/bash 

# bash script to install packages on the system
# check install.txt and install32.txt for packages names

# Copyright (C) 2014-2022 Md Imam Hossain

# License
#	This program is free software; you can use it for any purposes but can not redistribute it and/or modify it.
#	This program is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY.

ifiles=install.txt
ifiles32=install32.txt
ifilesu=install_ubuntu.txt

for package in `cat $ifiles`
do
apt-get -y install $package
done

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

if [ $? -ne 0 ]
then
echo "64-bit packages installation was unsuccessful"
else
echo "64-bit packages installation  was successful"
fi

for package in `cat $ifiles32`
do
apt-get -y install $package":i386"
done

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

if [ $? -ne 0 ]
then
echo "32-bit packages installation was unsuccessful"
else
echo "32-bit packages installation was successful"
fi

for package in `cat $ifilesu`
do
apt-get -y install $package
done

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

if [ $? -ne 0 ]
then
echo "System tools packages installation was unsuccessful"
else
echo "System tools packages installation  was successful"
fi

exit 0
