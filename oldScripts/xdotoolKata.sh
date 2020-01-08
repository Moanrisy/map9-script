#!/bin/bash 

#for i in {1..30} 
#do 
  #WID=`xdotool search --class "Chromium" | head -1` 
  WID="50331649"
  xdotool windowfocus $WID 
  xdotool key ctrl+l 
  xdotool mousemove 400 200
  sleep 1
  xdotool mousemove 600 600
#  sleep 4 
#done 
