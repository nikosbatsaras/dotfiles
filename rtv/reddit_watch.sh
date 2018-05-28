#!/usr/bin/env bash

echo -n "$1" > ~/.media

case "$2" in
	image)        echo ' image' >> ~/.media; feh -g 640x480 "$1";;
	gif | video)  echo ' video' >> ~/.media; mpv "$1" --autofit 640x480 --loop=inf;;
	youtube)      echo ' video' >> ~/.media; mpv --ytdl-format=best "$1" --autofit 640x480;;
esac
