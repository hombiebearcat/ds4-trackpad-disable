#!/usr/bin/bash
if [[ $1 ]]
then
    sleep 1
    export HOME=/home/user
    xenv="env DISPLAY=:0 XAUTHORITY=$HOME/.Xauthority" # to allow xinput to work
    export DISPLAY=:0 XAUTHORITY=$HOME/.Xauthority # to allow xinput to work
    NL=`xinput list | grep "Wireless Controller Touchpad" | awk -F "\t" '{print $2}' | cut -d= -f2 | wc -l` # number of lines
    LN=1 # current line number
    while [ $LN -le $NL ]
    do
        TID=`xinput list | grep "Wireless Controller Touchpad" | awk -F "\t" '{print $2}' | cut -d= -f2 | cut -d$'\n' -f$LN`
        xinput --disable $TID
    done
else
    SCRIPT=$(readlink -f "$0")
    $SCRIPT run &
fi
