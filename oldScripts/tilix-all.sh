#!/bin/bash

TILIX_SESSIONS_FOLDER=~/Script/tilix/

TILIX_OPTS=""

for session in $TILIX_SESSIONS_FOLDER/*; do
    TILIX_OPTS="$TILIX_OPTS -s $session"
  done

tilix $TILIX_OPTS
