#!/bin/bash 

# bash script to install basic development packages need for drivers and system libraries compiling from the source
# check install_dev.txt for packages names

# Copyright (C) 2014-2022 Md Imam Hossain

# License
#	This program is free software; you can use it for any purposes but can not redistribute it and/or modify it.
#	This program is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY.

ifiles=install_dev.txt

for package in `cat $ifiles`
do
apt-get -y install $package
done

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

RETV=$?

if [ $RETV -ne 0 ]
then
echo "Basic development packages installation was unsuccessful"
else
echo "Basic development packages installation  was successful"
fi

exit $RETV
