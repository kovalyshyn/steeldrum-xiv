#!/bin/bash
# Cowsay
# linux
COWDIR=/usr/share/cowsay/cows/;
# MacOS
#COWDIR=/usr/local/opt/cowsay/share/cows/;
COWNUM=$(($RANDOM%$(ls $COWDIR | wc -l)));
COWFILE=$(ls $COWDIR | sed -n ''$COWNUM'p'); echo $1 |
cowsay -f $COWFILE
