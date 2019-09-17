URL=$(youtube-dl -j --flat-playlist "https://www.youtube.com/playlist?list=WL" | jq -r '.title + "<>"+.id' | dmenu -l 10 -fn "Roboto - 15" | sed 's_.*<>_https://www.youtube.com/watch\?v\=_')
echo $URL
mpv $URL

