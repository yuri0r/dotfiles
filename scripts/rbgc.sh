#!/bin/bash
#script assumes that nitrogen is setup

#get number of screens
var=` xrandr | grep ' connected' | wc -l`

#set random background for each screen
for ((i=0; i<$var; i++)) 
do
	echo $i
	nitrogen --set-scaled --head=$i --save --random $HOME/wallpaper 
done
