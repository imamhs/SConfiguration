#!/bin/bash

# bash script to setup user groups

# Copyright (C) 2014-2015 Md Imam Hossain

# License
#	This program is free software; you can use it for any purposes but can not redistribute it and/or modify it.
#	This program is distributed in the hope that it will be useful but WITHOUT ANY WARRANTY.

gfiles=group.txt

for gname in `cat $gfiles`
do
usermod -a -G $gname $1
done

exit 0
