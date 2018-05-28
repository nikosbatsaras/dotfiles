#!/usr/bin/env bash

REDDIT_PATH=~/Reddit

if [ ! -d "$REDDIT_PATH/images" ]; then mkdir -p "$REDDIT_PATH/images"; fi
if [ ! -d "$REDDIT_PATH/videos" ]; then mkdir -p "$REDDIT_PATH/videos"; fi

link=$(cat ~/.media | awk '{print $1}')
format=$(cat ~/.media | awk '{print $2}')

case "$format" in
	image) cd "$REDDIT_PATH/images";;
	video) cd "$REDDIT_PATH/videos";;
esac

wget "$link"
