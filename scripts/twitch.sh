#!/bin/bash

STREAMER=`twitchy --non-interactive | sed "s/,.*,/, /" | dmenu -l 5 -fn "Roboto - 15" | sed "s/.*, //"`
echo $STREAMER

i3-msg "workspace 8; append_layout /home/yuri/.config/i3/twitch.json"

google-chrome-stable --app=https://www.twitch.tv/$STREAMER/chat
st -e mpv https://www.twitch.tv/$STREAMER
