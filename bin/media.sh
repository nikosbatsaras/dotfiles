#!/usr/bin/env bash

action='watch'
link=''
format=''

function usage() {
	echo
	echo "Usage:"
	echo "      media.sh [-d] [-l <link> -f <format>] [-h]"
	echo
	echo "Options:"
	echo "      -d   Download (default is 'watch')"
	echo "      -l   Link/url of the media"
	echo "      -f   Format (video, image)"
	echo "      -h   Show usage"
	echo
	echo "If no link/format is specified, read them from ~/.media."
	echo "~/.media structure: <link> <format>"
	echo

	exit 1
}

while getopts ":l:f:dh" opt
do
    case $opt in
        l) link="$OPTARG";;
        f) format="$OPTARG";;
        d) action='download';;

       \?) echo "ERROR: Invalid option: -$OPTARG" >&2; usage;;
        :) echo "ERROR: Option -$OPTARG requires an argument." >&2; usage;;

        h | *) usage;;
    esac
done

if [ "$link" = '' ] && [ ! "$format" = '' ]; then usage; fi
if [ ! "$link" = '' ] && [ "$format" = '' ]; then usage; fi

if [ "$action" = 'watch' ]
then
	if [ "$link" = '' ] && [ "$format" = '' ]
	then
		link=$(cat ~/.media | awk '{print $1}')
		format=$(cat ~/.media | awk '{print $2}')
	fi

	echo -n "$link" > ~/.media

	case "$format" in
		image)        echo ' image'   >> ~/.media; feh -g 640x480 "$link";;
		gif | video)  echo ' video'   >> ~/.media; mpv "$link" --loop=inf;;
		youtube)      echo ' youtube' >> ~/.media; mpv --ytdl-format=best "$link";;
	esac
else
	MEDIA_PATH=~/Media

	if [ ! -d "$MEDIA_PATH/images" ]; then mkdir -p "$MEDIA_PATH/images"; fi
	if [ ! -d "$MEDIA_PATH/videos" ]; then mkdir -p "$MEDIA_PATH/videos"; fi

	if [ "$link" = '' ] && [ "$format" = '' ]
	then
		link=$(cat ~/.media | awk '{print $1}')
		format=$(cat ~/.media | awk '{print $2}')
	fi

	case "$format" in
		image)             cd "$MEDIA_PATH/images";;
		video | youtube)   cd "$MEDIA_PATH/videos";;
	esac

	if [ "$format" = 'image' ] || [ "$format" = 'video' ]
	then
		wget       "$link"
	else
		youtube-dl "$link"
	fi
fi
