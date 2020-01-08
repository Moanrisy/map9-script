#!/bin/bash
a=`xprop -root _NET_ACTIVE_WINDOW | rev | cut -d ' ' -f1 | rev`;wmctrl -i -r $a -t 4
