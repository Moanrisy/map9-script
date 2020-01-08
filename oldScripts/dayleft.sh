#!/bin/sh

DIFF=$(( $(date -d '01/01/2020 00:00' +%s) - $(date +%s) )) ; \
  notify-send "$(( DIFF / (3600*24) )) days $(( DIFF % (3600*24) / 3600 )) hours $(( DIFF % 3600 / 60 )) minutes $(( DIFF % 60 )) seconds left"
#notify-send $(awk "BEGIN {print (306/365)*100}")
DAY=$(( DIFF / (3600*24) ))
#notify-send "$( bc -l <<< $DAY/365*100 ) %"

