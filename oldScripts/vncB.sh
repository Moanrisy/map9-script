#!/bin/sh
xrandr --newmode "vnc-min" 14.95  640 632 696 752  320 321 324 332  -HSync +Vsync
xrandr --addmode VIRTUAL1 vnc-min
xrandr --output VIRTUAL1 --auto --right-of eDP1
sleep .5
x11vnc -display :0 -clip 640x320+1921+0
