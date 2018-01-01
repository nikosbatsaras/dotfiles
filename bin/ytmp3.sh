#!/bin/bash

##
#
# @desc Just a simple wrapper for youtube-dl
#
##

usage() {
    echo
    echo "Usage:"
    echo "      ytmp3.sh -u <url> -g <genre> [-h]"
    echo
    echo "Options:"
    echo "      -u   Youtube url"
    echo "      -g   Song genre"
    echo "      -h   Show usage"
    echo

    exit 1
}

while getopts ":u:g:h" opt
do
    case $opt in
        u) 
            url="$OPTARG";; 
        g) 
            genre="$OPTARG";;
        \?)
            echo "ERROR: Invalid option: -$OPTARG" >&2; usage;;
        :)
            echo "ERROR: Option -$OPTARG requires an argument." >&2; usage;;
        h | *)
            usage;;
    esac
done

if [ -z "$url" ] || [ -z "$genre" ]; then usage; fi

if [ ! -d ~/Music ]; then mkdir ~/Music; fi
if [ ! -d ~/Music/"$genre" ]; then mkdir ~/Music/"$genre"; fi

destination="/home/$USER/Music/$genre/%(title)s.%(ext)s"

youtube-dl -o "$destination" --extract-audio --audio-format mp3 "$url"
