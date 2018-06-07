#!/usr/bin/env bash

MEDIA_PATH=~/Media

if [ ! -d "$MEDIA_PATH/images" ]; then mkdir -p "$MEDIA_PATH/images"; fi
if [ ! -d "$MEDIA_PATH/videos" ]; then mkdir -p "$MEDIA_PATH/videos"; fi

link=$(cat ~/.media | awk '{print $1}')
format=$(cat ~/.media | awk '{print $2}')

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
