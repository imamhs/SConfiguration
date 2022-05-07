#!/bin/bash 

# bash script to remove and install packages on the system
# check install.txt, install32.txt and remove.txt for packages names

# Copyright (C) 2014-2015 Md Imam Hossain

# License
#	This program is free software; you can use it for any purposes but can not redistribute it and/or modify it.
#	This program is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY.

ifiles=install.txt
ifiles32=install32.txt
rfiles=remove.txt

for package in `cat $ifiles`
do
apt-get -y install $package
done

for package in `cat $ifiles32`
do
apt-get -y install $package
done

dpkg -i ./compat/cupsys_1.4.3-1ubuntu1.9_all.deb
dpkg -i ./compat/libgtk1.2-common_1.2.10-18.1build2_all.deb
mkdir /usr/lib/i386-linux-gnu/pkcs11
cp ./compat/x86/pkcs11/p11-kit-trust.so /usr/lib/i386-linux-gnu/pkcs11
cp ./compat/x86/lib* /usr/lib/i386-linux-gnu/
cp ./compat/x64/lib* /usr/lib/x86_64-linux-gnu/
/usr/share/doc/libdvdread4/install-css.sh

for package in `cat $rfiles`
do
apt-get -y remove $package
done

apt-get -y autoremove

exit 0
