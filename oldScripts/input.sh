#!/bin/bash

say_this()
{
    screen -S Terminal -p 0 -X stuff "$1^M"
}

say_this "say Saving world"
say_this "save-off"
say_this "save-all"
