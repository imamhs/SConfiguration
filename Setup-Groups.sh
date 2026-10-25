#!/bin/bash

# bash script to setup user groups

# Copyright (C) 2014-2015 Md Imam Hossain

# License
# See License.md for more details

gfiles=group.txt

for gname in `cat $gfiles`
do
usermod -a -G $gname $1
done

exit 0
