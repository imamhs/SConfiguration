#!/bin/bash

# bash script to add extra repositories to system repositories database
# check repos.txt for repository addresses

# Copyright (C) 2014-2015 Md Imam Hossain

# License
#	This program is free software; you can use it for any purposes but can not redistribute it and/or modify it.
#	This program is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY.

ifiles=repos.txt

for package in `cat $ifiles`
do
apt-add-repository -y $package
done

sed -i "/^# deb .*partner/ s/^# //" /etc/apt/sources.list
sed -i 's/.*Update-Package-Lists.*/APT::Periodic::Update-Package-Lists "0";/' /etc/apt/apt.conf.d/10periodic

apt-get update

exit 0
