#!/bin/bash

STREAMER=`twitchy --non-interactive | sed "s/,.*,/, /" | dmenu -l 5 -fn "Roboto - 15" | sed "s/.*, //"`
echo $STREAMER

#exit of no stream was selected
if [ -z $STREAMER ]
then
	exit 0

#proceed as usual when not other params are given
elif [ -z $1 ]
then
	i3-msg "workspace 8; append_layout /home/yuri/.config/i3/twitch.json"
	google-chrome-stable --app=https://www.twitch.tv/$STREAMER/chat
	$TERMINAL -e mpv https://www.twitch.tv/$STREAMER 
	exit 0

#if -a is found only play audio
elif [ "$1" = "-a" ]
then
	$TERMINAL -e mpv https://www.twitch.tv/$STREAMER --no-video
	exit 0

#if other params are given pass them to mpv
else
	$TERMINAL -e mpv https://www.twitch.tv/$STREAMER $1 
	exit 0
fi

