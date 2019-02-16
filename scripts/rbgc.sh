#!/bin/bash
#script assumes that wallpapers are stored in ~/wallpaper and that feh is installed!

target=$(feh --no-fehbg --randomize --customlist %f ~/wallpaper | head -n1)
cp -f  $target ~/wallpaper/current.png
feh --no-fehbg --bg-center ~/wallpaper/current.png
