#!/bin/bash

# bash script to run sh files in the terminal emulators

# Copyright (C) 2014-2015 Md Imam Hossain

# License
# See License.md for more details

RRVal=0

CDIR="`dirname "$0"`"

if [ $CDIR == "." ]; then
CDIR="`pwd`"
fi

cd $CDIR

if [ -f /usr/bin/gnome-terminal ]
then
/usr/bin/gnome-terminal --title="SConfiguration" --working-directory="$CDIR" -e "./Setup.sh"
RRVal=$?
elif [ -f /usr/bin/konsole ]
then
/usr/bin/konsole --workdir="$CDIR" --hide-menubar --show-tabbar  -e ./Setup.sh
RRVal=$?
elif [ -f /usr/bin/xterm ]
then
/usr/bin/xterm -title "SConfiguration" -e "cd \"$CDIR\" && ./Setup.sh"
RRVal=$?
else
echo "Can not start Setup, please check if the terminal application is installed" > tempm
xdg-open tempm
fi

if [ $RRVal -ne 0 ]
then
echo "Setup was unsuccessful" > tempm
xdg-open tempm
fi

exit $RRVal
