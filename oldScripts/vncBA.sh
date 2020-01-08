#!/bin/sh
xrandr --newmode "vnc-min" 57.14  1200 1248 1368 1536  600 601 604 621  -HSync +Vsync
xrandr --addmode VIRTUAL1 vnc-min
xrandr --output VIRTUAL1 --auto --right-of eDP1
sleep .5
x11vnc -display :0 -clip 1200x600+1921+0
