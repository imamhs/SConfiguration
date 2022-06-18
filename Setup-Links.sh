#!/bin/bash

# bash script to create file support links

# Copyright (C) 2014-2022 Md Imam Hossain

# License
#	This program is free software; you can use it for any purposes but can not redistribute it and/or modify it.
#	This program is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY.

ln -s /usr/lib/x86_64-linux-gnu/libGLEW.so.1.13 /usr/lib/x86_64-linux-gnu/libGLEW.so.1.5
ln -s /usr/lib/x86_64-linux-gnu/libGLEW.so.1.13 /usr/lib/x86_64-linux-gnu/libGLEW.so.1.6
ln -s /usr/lib/x86_64-linux-gnu/libGLEW.so.1.13 /usr/lib/x86_64-linux-gnu/libGLEW.so.1.8
ln -s /usr/lib/x86_64-linux-gnu/libopenal.so.1 /usr/lib/x86_64-linux-gnu/libopenal.so.0
ln -s /usr/lib/x86_64-linux-gnu/libaldmb.so.1 /usr/lib/x86_64-linux-gnu/libaldmb-0.9.3.so
ln -s /usr/lib/x86_64-linux-gnu/libdumb.so.1 /usr/lib/x86_64-linux-gnu/libdumb-0.9.3.so
ln -s /usr/lib/x86_64-linux-gnu/libtasn1.so.6 /usr/lib/x86_64-linux-gnu/libtasn1.so.3
ln -s /usr/lib/x86_64-linux-gnu/libtiff.so.4 /usr/lib/x86_64-linux-gnu/libtiff.so.3

ln -s /usr/lib/i386-linux-gnu/libGLEW.so.1.13 /usr/lib/i386-linux-gnu/libGLEW.so.1.8
ln -s /usr/lib/i386-linux-gnu/libopenal.so.1 /usr/lib/i386-linux-gnu/libopenal.so.0
ln -s /usr/lib/i386-linux-gnu/libaldmb.so.1 /usr/lib/i386-linux-gnu/libaldmb-0.9.3.so
ln -s /usr/lib/i386-linux-gnu/libdumb.so.1 /usr/lib/i386-linux-gnu/libdumb-0.9.3.so
ln -s /usr/lib/i386-linux-gnu/libtasn1.so.6 /usr/lib/i386-linux-gnu/libtasn1.so.3
ln -s /usr/lib/i386-linux-gnu/libtiff.so.4 /usr/lib/i386-linux-gnu/libtiff.so.3

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

if [ $? -ne 0 ]
then
echo "Creating links for compatibility libraries was unsuccessful"
else
echo "Creating links for compatibility libraries was successful"
fi

exit 0
