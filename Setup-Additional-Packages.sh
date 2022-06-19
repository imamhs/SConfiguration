#!/bin/bash 

# bash script to install extra packages on the system

# Copyright (C) 2014-2022 Md Imam Hossain

# License
#	This program is free software; you can use it for any purposes but can not redistribute it and/or modify it.
#	This program is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY.

# Install additional fonts

echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections

apt-get -y install ttf-mscorefonts-installer

# Install compatibility packages

dpkg -i ./compat/debs/cupsys_1.4.3-1ubuntu1.9_all.deb
dpkg -i ./compat/debs/libffi6_3.2.1-8_amd64.deb
dpkg -i ./compat/debs/libffi6_3.2.1-8_i386.deb
dpkg -i ./compat/debs/libgtk1.2-common_1.2.10-18.1build2_all.deb
dpkg -i ./compat/debs/libhal1_0.5.14-8ubuntu1_amd64.deb
dpkg -i ./compat/debs/libhal1_0.5.14-8ubuntu1_i386.deb
dpkg -i ./compat/debs/vdpau-va-driver_0.7.4-6ubuntu1_amd64.deb
dpkg -i ./compat/debs/libgstreamer0.10-0_0.10.36-1.5ubuntu1_amd64.deb
dpkg -i ./compat/debs/libgstreamer0.10-0_0.10.36-1.5ubuntu1_i386.deb
dpkg -i ./compat/debs/libgstreamer-plugins-base0.10-0_0.10.36-2ubuntu0.2_amd64.deb
dpkg -i ./compat/debs/libgstreamer-plugins-base0.10-0_0.10.36-2ubuntu0.2_i386.deb
dpkg -i ./compat/debs/python-dbus_1.2.16-1build1_amd64.deb
dpkg -i ./compat/debs/libssl1.0.0_1.0.2n-1ubuntu5.3_amd64.deb
dpkg -i ./compat/debs/libssl1.1_1.1.1f-1ubuntu2.13_amd64.deb
dpkg -i ./compat/debs/libldap-2.4-2_2.4.49+dfsg-2ubuntu1.9_amd64.deb
dpkg -i ./compat/debs/libldap-2.4-2_2.4.49+dfsg-2ubuntu1.9_i386.deb
dpkg -i ./compat/debs/libpangox-1.0-0_0.0.2-5.1_i386.deb

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

if [ $? -ne 0 ]
then
echo "Installing compatibility packages was unsuccessful"
else
echo "Installing compatibility packages was successful"
fi

# Install encrypted DVDs playback support

apt-get -y install libdvd-pkg
dpkg-reconfigure libdvd-pkg

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

if [ $? -ne 0 ]
then
echo "Installing encrypted DVDs playback support was unsuccessful"
else
echo "Installing encrypted DVDs playback support was successful"
fi

# Install compatibility libraries

cp -R ./compat/libs/* /

printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' -

if [ $? -ne 0 ]
then
echo "Copying compatibility libraries was unsuccessful"
else
echo "Copying compatibility libraries was successful"
fi

exit 0
