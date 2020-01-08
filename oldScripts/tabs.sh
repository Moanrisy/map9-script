#!/bin/bash
#
# Based on http://www.linuxjournal.com/content/start-and-control-konsole-dbus

#####################################################################
# Start sessions in konsole.
function start_sessions()
{
    #The passed argument is an array so capture it in a variable
    declare -a sessions=("${!1}")
    local nsessions=0
    local session_count=${#sessions[*]}
    local i=0

    while [[ $i -lt $session_count ]]
    do
        local name=${sessions[$i]}
        let i++
        local profile=${sessions[$i]}
        let i++
        local command=${sessions[$i]}
        let i++

        echo "Creating $name: $command"
        # Starting with a specific profile appears to be broken.
        #local session_num=$(qdbus org.kde.konsole /Konsole newSession $profile $HOME)
        local session_num=$(qdbus org.kde.konsole /Konsole newSession)
        sleep 0.1
        qdbus org.kde.konsole /Sessions/$session_num setTitle 0 $name
        sleep 0.1
        qdbus org.kde.konsole /Sessions/$session_num setTitle 1 $name
        sleep 0.1
        qdbus org.kde.konsole /Sessions/$session_num sendText "$command"
        sleep 0.1
        qdbus org.kde.konsole /Sessions/$session_num sendText $'\n'
        sleep 0.1

        let nsessions++
    done

     # Activate first session.
    while [[ $nsessions -gt 1 ]]
    do
        qdbus org.kde.konsole /Konsole prevSession
        let nsessions--
    done
  }
